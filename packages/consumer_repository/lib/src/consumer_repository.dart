import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_storage/cloud_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:remote_database/remote_database.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../consumer_repository.dart';
import 'constants/constants.dart';

class ConsumerRepository {
  ConsumerRepository({
    required RemoteDatabase remoteDatabase,
    required CloudStorage cloudStorage,
  })  : _remoteDatabase = remoteDatabase,
        _cloudStorage = cloudStorage {
    currentConsumerStream.listen((event) {
      currentConsumer = event;
    });
  }

  // Apis
  final RemoteDatabase _remoteDatabase;
  final CloudStorage _cloudStorage;

  // VARIABLES
  // Current Consumer
  final _currentConsumerStreamController =
      StreamController<Consumer>.broadcast();
  Stream<Consumer> get currentConsumerStream =>
      _currentConsumerStreamController.stream;
  Consumer currentConsumer = Consumer.empty();
  // Cached Consumers
  final _cachedConsumers =
      <String, ({DateTime endDate, Consumer cachedConsumer})>{};

  // FUNCTIONS
  FutureUnit createCurrentConsumer({
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
    // TODO
    // CONTROL ALL INPUT VALUES
    final avatarImagePath =
        '${ConsumerRepositoryStrings.consumerCollectionPath}'
        '/$authId'
        '/avatarImages';
    try {
      final avatarUrls = AvatarUrls(
        url128: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage128',
          image: avatarImage128,
        ),
        url256: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage256',
          image: avatarImage256,
        ),
        url512: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage512',
          image: avatarImage512,
        ),
        url1024: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage1024',
          image: avatarImage1024,
        ),
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
        avatarUrls: avatarUrls,
        counters: const Counters(
          ownedToy: 0,
          switchChance: 0,
          switchs: 0,
        ),
        isDeletingAccount: false,
        state: ConsumerState.hasData,
      );
      _remoteDatabase.batchSetDoc(
        collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
        documentID: authId,
        jsonData: creatableConsumer.toJson(),
      );

      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit initCurrentConsumer({
    required String authId,
  }) async {
    // CONTROL ALL INPUT VALUES

    try {
      final consumerDoc = await _remoteDatabase.readDoc(
        collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
        documentID: authId,
      );

      if (consumerDoc == null) {
        _currentConsumerStreamController.sink.add(Consumer.needRegister());
        return const Right(unit);
      }

      final currentConsumer = Consumer.fromJson(consumerDoc);
      _currentConsumerStreamController.sink.add(currentConsumer);
      return const Right(unit);
    } catch (exception) {
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
    final avatarImagePath =
        '${ConsumerRepositoryStrings.consumerCollectionPath}'
        '/${currentConsumer.authId}'
        '/avatarImages';
    try {
      final avatarUrls = AvatarUrls(
        url128: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage128',
          image: avatarImagesValue.avatarImage128,
        ),
        url256: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage256',
          image: avatarImagesValue.avatarImage256,
        ),
        url512: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage512',
          image: avatarImagesValue.avatarImage512,
        ),
        url1024: await _cloudStorage.uploadImageGetUrl(
          path: '$avatarImagePath/avatarImage1024',
          image: avatarImagesValue.avatarImage1024,
        ),
      );

      final updatedConsumer = currentConsumer.copyWith(
        avatarUrls: avatarUrls,
      );

      // Todo:
      // Add json {'specific':field}
      _remoteDatabase.batchUpdateDoc(
        collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
        documentID: currentConsumer.authId,
        jsonData: updatedConsumer.toJson(),
      );

      return const Right(unit);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  Consumer? updateFullName({
    required FirstName firstNameObject,
    required LastName lastNameObject,
  }) {
    if (currentConsumer == Consumer.empty()) {
      return null;
    }
    if (firstNameObject.isNotValid && lastNameObject.isNotValid) {
      return null;
    }
    final newFirstName = firstNameObject.isValid
        ? firstNameObject.value.newFirstName
        : currentConsumer.firstName;

    final newLastName = lastNameObject.isValid
        ? lastNameObject.value.newLastName
        : currentConsumer.lastName;
    final updatedConsumer = currentConsumer.copyWith(
      firstName: newFirstName,
      lastName: newLastName,
    );
    _remoteDatabase.batchUpdateDoc(
      collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
      documentID: currentConsumer.authId,
      jsonData: updatedConsumer.toJson(),
    );
    return updatedConsumer;
  }

  Consumer updateEmail({
    required String email,
  }) {
    final updatedConsumer = currentConsumer.copyWith(email: email);
    _remoteDatabase.batchUpdateDoc(
      collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
      documentID: currentConsumer.authId,
      jsonData: updatedConsumer.toJson(),
    );
    return updatedConsumer;
  }

  Consumer increaseOwnedToyCounter() {
    final updatedConsumer = currentConsumer.copyWith(
      counters: currentConsumer.counters.copyWith(
        ownedToy: currentConsumer.counters.ownedToy + 1,
      ),
    );
    _remoteDatabase.batchUpdateDoc(
      collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
      documentID: currentConsumer.authId,
      jsonData: updatedConsumer.toJson(),
    );
    return updatedConsumer;
  }

  FutureEither<Consumer> readConsumer({
    required String authId,
  }) async {
    // Clear Cache
    _cachedConsumers.removeWhere(
      (key, value) => value.endDate.isBefore(DateTime.now()),
    );

    // Get from Cache
    final thisConsumerCache = _cachedConsumers[authId];

    // If Cache is not empty and not expired
    // Return from Cache
    if (thisConsumerCache != null) {
      return Right(_cachedConsumers[authId]!.cachedConsumer);
    }

    // If Cache is empty or expired
    // Get from Remote Database
    try {
      final consumerDoc = await _remoteDatabase.readDoc(
        collectionID: ConsumerRepositoryStrings.consumerCollectionPath,
        documentID: authId,
      );

      if (consumerDoc == null) {
        return const Left(ConsumerRepositoryException.unknown());
      }
      final consumer = Consumer.fromJson(consumerDoc);
      // Add to cache
      _cachedConsumers.addAll({
        authId: (
          cachedConsumer: consumer,
          endDate: DateTime.now().add(const Duration(minutes: 1)),
        ),
      });
      return Right(consumer);
    } catch (exception) {
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  void sinkCurrentConsumer({
    required Consumer consumer,
  }) {
    _currentConsumerStreamController.sink.add(consumer);
  }
}
