import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/errors/errors.dart';

import 'constants/constants.dart';

class ConsumerRepository {
  ConsumerRepository({
    required FirebaseFirestore firebaseFirestore,
    required FirebaseStorage firebaseStorage,
  })  : _firebaseFirestore = firebaseFirestore,
        _firebaseStorage = firebaseStorage {
    currentConsumerStream.listen((event) {
      currentConsumer = event;
    });
  }
  // INSTANCES
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  // VARIABLES
  final _currentConsumerStreamController =
      StreamController<Consumer>.broadcast();
  Stream<Consumer> get currentConsumerStream =>
      _currentConsumerStreamController.stream;
  Consumer currentConsumer = Consumer.empty();

  // FUNCTIONS
  FutureUnit create({
    required String authId,
    required String firstName,
    required String lastName,
    required double latitude,
    required double longitude,
    required Uint8List avatarImage128,
    required Uint8List avatarImage256,
    required Uint8List avatarImage512,
    required Uint8List avatarImage1024,
    String? email,
  }) async {
    // CONTROL ALL INPUT VALUES

    try {
      final avatar128Url = await _uploadAvatarImageToStorage(
        avatarImage128,
        authId,
        'size128',
      );
      final avatar256Url = await _uploadAvatarImageToStorage(
        avatarImage256,
        authId,
        'size256',
      );
      final avatar512Url = await _uploadAvatarImageToStorage(
        avatarImage512,
        authId,
        'size512',
      );
      final avatar1024Url = await _uploadAvatarImageToStorage(
        avatarImage1024,
        authId,
        'size1024',
      );

      final creatableConsumer = Consumer(
        authId: authId,
        firstName: firstName,
        lastName: lastName,
        email: email,
        currentLocation: CurrentLocation(
          latitude: latitude,
          longitude: longitude,
        ),
        avatarUrls: AvatarUrls(
          url128: avatar128Url,
          url256: avatar256Url,
          url512: avatar512Url,
          url1024: avatar1024Url,
        ),
        counters: const Counters(
          ownedToy: 0,
          switchChance: 0,
          switchs: 0,
        ),
        isDeletingAccount: false,
        state: ConsumerState.hasData,
      );

      await _firebaseFirestore
          .collection(ConsumerRepositoryStrings.consumerCollectionPath)
          .doc(authId)
          .set(creatableConsumer.toJson());

      _currentConsumerStreamController.sink.add(creatableConsumer);
      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit readConsumer({
    required String authId,
  }) async {
    // CONTROL ALL INPUT VALUES

    try {
      final consumerDoc = await _firebaseFirestore
          .collection(ConsumerRepositoryStrings.consumerCollectionPath)
          .doc(authId)
          .get();
      if (!consumerDoc.exists || consumerDoc.data() == null) {
        _currentConsumerStreamController.sink.add(
          Consumer.needRegister(),
        );
        return const Right(unit);
      }
      final currentConsumer = Consumer.fromJson(consumerDoc.data()!);
      _currentConsumerStreamController.sink.add(currentConsumer);
      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  void clearCurrentConsumer() {
    _currentConsumerStreamController.sink.add(Consumer.empty());
  }

  FutureUnit updateAvatarImage({
    required AvatarImages avatarImages,
  }) async {
    final avatarImagesValue = avatarImages.value;
    if (avatarImages.isNotValid || avatarImagesValue == null) {
      return const Left(ConsumerRepositoryException.invalidInput());
    }
    if (currentConsumer == Consumer.empty()) {
      return const Left(ConsumerRepositoryException.nonEmptyConsumerRequired());
    }
    try {
      final avatar128Url = await _uploadAvatarImageToStorage(
        avatarImagesValue.avatarImage128,
        currentConsumer.authId,
        'size128',
      );
      final avatar256Url = await _uploadAvatarImageToStorage(
        avatarImagesValue.avatarImage256,
        currentConsumer.authId,
        'size256',
      );
      final avatar512Url = await _uploadAvatarImageToStorage(
        avatarImagesValue.avatarImage512,
        currentConsumer.authId,
        'size512',
      );
      final avatar1024Url = await _uploadAvatarImageToStorage(
        avatarImagesValue.avatarImage1024,
        currentConsumer.authId,
        'size1024',
      );

      final updatedConsumer = currentConsumer.copyWith(
        avatarUrls: AvatarUrls(
          url128: avatar128Url,
          url256: avatar256Url,
          url512: avatar512Url,
          url1024: avatar1024Url,
        ),
      );
      await _firebaseFirestore
          .collection(ConsumerRepositoryStrings.consumerCollectionPath)
          .doc(currentConsumer.authId)
          .update(updatedConsumer.toJson());

      _currentConsumerStreamController.sink.add(updatedConsumer);
      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit updateFullName({
    required FirstName firstNameObject,
    required LastName lastNameObject,
  }) async {
    if (currentConsumer == Consumer.empty()) {
      return const Left(ConsumerRepositoryException.nonEmptyConsumerRequired());
    }
    if (firstNameObject.isNotValid && lastNameObject.isNotValid) {
      return const Left(ConsumerRepositoryException.invalidInput());
    }
    final newFirstName = firstNameObject.isValid
        ? firstNameObject.value.newFirstName
        : currentConsumer.firstName;

    final newLastName = lastNameObject.isValid
        ? lastNameObject.value.newLastName
        : currentConsumer.lastName;
    try {
      final updatedConsumer = currentConsumer.copyWith(
        firstName: newFirstName,
        lastName: newLastName,
      );
      await _firebaseFirestore
          .collection(ConsumerRepositoryStrings.consumerCollectionPath)
          .doc(currentConsumer.authId)
          .update(updatedConsumer.toJson());

      _currentConsumerStreamController.sink.add(updatedConsumer);
      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit updateEmail({
    required String email,
  }) async {
    try {
      final updatedConsumer = currentConsumer.copyWith(
        email: email,
      );
      await _firebaseFirestore
          .collection(ConsumerRepositoryStrings.consumerCollectionPath)
          .doc(currentConsumer.authId)
          .update(updatedConsumer.toJson());

      _currentConsumerStreamController.sink.add(updatedConsumer);
      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  // Special Functions
  Future<String> _uploadAvatarImageToStorage(
    Uint8List image,
    String consumerAuthId,
    String imageKey,
  ) async {
    try {
      final storageRef = _firebaseStorage.ref().child(
            '${ConsumerRepositoryStrings.consumerCollectionPath}'
            '/$consumerAuthId'
            '/avatarImages'
            '/$imageKey',
          );
      final task = await storageRef.putData(image);
      return await task.ref.getDownloadURL();
    } catch (exception) {
      rethrow;
    }
  }
}
