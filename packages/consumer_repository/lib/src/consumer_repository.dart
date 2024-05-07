import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_storage/cloud_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/errors/errors.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../consumer_repository.dart';
import 'constants/constants.dart';

class ConsumerRepository {
  ConsumerRepository({
    required Client client,
    required CloudStorage cloudStorage,
  })  : _client = client,
        _cloudStorage = cloudStorage {
    currentConsumerStream.listen((event) {
      currentConsumer = event;
    });
  }

  // Apis
  final Client _client;
  final CloudStorage _cloudStorage;

  // VARIABLES
  // Current Consumer
  final _currentConsumerStreamController =
      StreamController<Consumer?>.broadcast();
  Stream<Consumer?> get currentConsumerStream =>
      _currentConsumerStreamController.stream;
  Consumer? currentConsumer;
  // Cached Consumers
  final _cachedConsumers =
      <int, ({DateTime endDate, Consumer cachedConsumer})>{};

  // FUNCTIONS
  FutureEither<Consumer> createCurrentConsumer({
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

      final createdConsumer = await _client.consumer.createConsumer(
        authId,
        firstName,
        lastName,
        latitude,
        longitude,
        avatarUrls.url128,
        avatarUrls.url256,
        avatarUrls.url512,
        avatarUrls.url1024,
        email,
      );
      _currentConsumerStreamController.sink.add(createdConsumer);
      return Right(createdConsumer);
    } catch (exception) {
      // if (exception is FirebaseException) {
      //   throw _firebaseExceptionToUserException(exception);
      // }
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureEither<Consumer?> initCurrentConsumerWithAuthID({
    required String authId,
  }) async {
    try {
      final consumer = await _client.consumer.readWithAuthID(authId);
      _currentConsumerStreamController.sink.add(consumer);

      return Right(consumer);
    } catch (exception) {
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit updateAvatarImage({
    required AvatarImages avatarImages,
  }) async {
    final avatarImagesValue = avatarImages.value;
    if (avatarImages.isNotValid || avatarImagesValue == null) {
      return const Left(ConsumerRepositoryException.invalidInput());
    }
    if (currentConsumer == null) {
      return const Left(ConsumerRepositoryException.nonEmptyConsumerRequired());
    }
    final avatarImagePath =
        '${ConsumerRepositoryStrings.consumerCollectionPath}'
        '/${currentConsumer!.authId}'
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
      final updatedConsumer = await _client.consumer.updateAvatarUrls(
        currentConsumer!.authId,
        avatarUrls.url128,
        avatarUrls.url256,
        avatarUrls.url512,
        avatarUrls.url1024,
      );
      sinkCurrentConsumer(updatedConsumer);
      return const Right(unit);
    } catch (exception) {
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit updateFullName({
    required FirstName firstNameObject,
    required LastName lastNameObject,
  }) async {
    try {
      if (currentConsumer == null) {
        return const Left(
          ConsumerRepositoryException.nonEmptyConsumerRequired(),
        );
      }
      if (firstNameObject.isNotValid && lastNameObject.isNotValid) {
        return const Left(ConsumerRepositoryException.invalidInput());
      }
      final newFirstName = firstNameObject.isValid
          ? firstNameObject.value.newFirstName
          : currentConsumer!.firstName;

      final newLastName = lastNameObject.isValid
          ? lastNameObject.value.newLastName
          : currentConsumer!.lastName;
      final updatedConsumer = await _client.consumer.updateFullName(
        currentConsumer!.authId,
        newFirstName,
        newLastName,
      );

      sinkCurrentConsumer(updatedConsumer);
      return const Right(unit);
    } catch (exception) {
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureUnit updateEmail({
    required String newEmail,
  }) async {
    if (currentConsumer?.authId == null) {
      return const Left(ConsumerRepositoryException.nonEmptyConsumerRequired());
    }
    try {
      final updatedConsumer = await _client.consumer.updateEmail(
        currentConsumer!.authId,
        newEmail,
      );
      sinkCurrentConsumer(updatedConsumer);
      return const Right(unit);
    } catch (exception) {
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  FutureEither<Consumer> readConsumer({
    required int consumerID,
  }) async {
    // Clear Cache
    _cachedConsumers.removeWhere(
      (key, value) => value.endDate.isBefore(DateTime.now()),
    );

    // Get from Cache
    final thisConsumerCache = _cachedConsumers[consumerID];

    // If Cache is not empty and not expired
    // Return from Cache
    if (thisConsumerCache != null) {
      return Right(_cachedConsumers[consumerID]!.cachedConsumer);
    }

    // If Cache is empty or expired
    // Get from Remote Database
    try {
      final consumer = await _client.consumer.readWithID(consumerID);
      if (consumer == null) {
        return const Left(ConsumerRepositoryException.unknown());
      }
      // Add to cache
      _cachedConsumers.addAll({
        consumerID: (
          cachedConsumer: consumer,
          endDate: DateTime.now().add(const Duration(minutes: 1)),
        ),
      });
      return Right(consumer);
    } catch (exception) {
      return const Left(ConsumerRepositoryException.unknown());
    }
  }

  void sinkCurrentConsumer(
    Consumer? consumer,
  ) {
    _currentConsumerStreamController.sink.add(consumer);
  }
}
