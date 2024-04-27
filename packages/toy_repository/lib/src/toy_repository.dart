import 'dart:async';

import 'package:cloud_storage/cloud_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:remote_database/remote_database.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../toy_repository.dart';
import 'constants/constants.dart';

class ToyRepository {
  ToyRepository({
    required RemoteDatabase remoteDatabase,
    required CloudStorage cloudStorage,
  })  : _remoteDatabase = remoteDatabase,
        _cloudStorage = cloudStorage {
    ownedToysStream.listen((event) {
      ownedToys = event;
    });
  }
  // INSTANCES
  final CloudStorage _cloudStorage;
  final RemoteDatabase _remoteDatabase;

  // VARIABLES
  // Current Consumer
  final _ownedToysStreamController = StreamController<List<Toy>>.broadcast();
  Stream<List<Toy>> get ownedToysStream => _ownedToysStreamController.stream;
  List<Toy>? ownedToys;

  // Functions
  FutureUnit create({
    required String ownerAuthId,
    required ToyName toyName,
    required ToyDescription toyDescription,
    required List<ToyImage> toyImageList,
    required ToyAge toyAge,
    required ToyGender toyGender,
    required ToyCondition toyCondition,
  }) async {
    final uploadedToyImageUrls = <ToyImageUrls>[];
    if (toyName.isNotValid) {
      return const Left(ToyRepositoryException.unknown());
    }
    if (toyDescription.isNotValid) {
      return const Left(ToyRepositoryException.unknown());
    }
    // Todo:
    // Add Uint8List length and size Checker value object
    final id = DateTime.now().millisecondsSinceEpoch.toString() + ownerAuthId;
    final path = '${ToyRepositoryStrings.toysCollectionPath}'
        '/$id'
        '/images';
    try {
      for (var i = 0; i < toyImageList.length; i++) {
        final value = toyImageList[i].value;

        final toyImageUrls = ToyImageUrls(
          url1024: await _cloudStorage.uploadImageGetUrl(
            path: '$path/image$i/toyImage1024',
            image: value.toyImage1024,
          ),
          url128: await _cloudStorage.uploadImageGetUrl(
            path: '$path/image$i/toyImage128',
            image: value.toyImage128,
          ),
          url256: await _cloudStorage.uploadImageGetUrl(
            path: '$path/image$i/toyImage256',
            image: value.toyImage256,
          ),
          url512: await _cloudStorage.uploadImageGetUrl(
            path: '$path/image$i/toyImage512',
            image: value.toyImage512,
          ),
        );

        uploadedToyImageUrls.add(toyImageUrls);
      }
      if (uploadedToyImageUrls.length != toyImageList.length) {
        return const Left(ToyRepositoryException.unknown());
      }

      final creatableToy = Toy(
        ownerAuthId: ownerAuthId,
        id: id,
        name: toyName.value,
        description: toyDescription.value,
        imageUrlList: uploadedToyImageUrls,
        details: ToyDetails(
          age: toyAge,
          gender: toyGender,
          condition: toyCondition,
        ),
        createdAt: DateTime.now(),
      );

      _remoteDatabase.batchSetDoc(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        documentID: id,
        jsonData: creatableToy.toJson(),
      );
      return const Right(unit);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureUnit fetchLastest12Owned({required String ownerAuthId}) async {
    try {
      final toyDocs = await _remoteDatabase.readCollection(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        orderBy: 'createdAt',
        limitToLast: 12,
        fieldContains: (field: 'ownerAuthId', value: ownerAuthId),
      );
      if (toyDocs == null) {
        return const Left(ToyRepositoryException.unknown());
      }
      if (toyDocs.isEmpty) {
        _ownedToysStreamController.sink.add([]);
        return const Right(unit);
      }
      final toys = toyDocs.map(Toy.fromJson).toList();
      _ownedToysStreamController.sink.add(toys);
      return const Right(unit);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureEither<List<Toy>> fetch12BeforeOldestOwnedToy({
    required String ownerAuthId,
    required Toy oldestOwnedToy,
  }) async {
    try {
      final toyDocs = await _remoteDatabase.readCollection(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        fieldContains: (field: 'ownerAuthId', value: ownerAuthId),
        orderBy: 'createdAt',
        limitToLast: 12,
        endBefore: [oldestOwnedToy.createdAt.millisecondsSinceEpoch],
      );
      if (toyDocs == null) {
        return const Left(ToyRepositoryException.unknown());
      }
      if (toyDocs.isEmpty) {
        _ownedToysStreamController.sink.add([]);
        return const Right([]);
      }

      final toys = toyDocs.map(Toy.fromJson).toList();
      final newOwnedToysList = List<Toy>.from(toys)..addAll(ownedToys ?? []);
      _ownedToysStreamController.sink.add(newOwnedToysList);

      return Right(toys);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  // TODO: Rename
  FutureEither<List<Toy>> fetch10BeforeOldestToy({
    required Toy oldestToy,
  }) async {
    try {
      final toyDocs = await _remoteDatabase.readCollection(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        orderBy: 'createdAt',
        limitToLast: 10,
        endBefore: [oldestToy.createdAt.millisecondsSinceEpoch],
      );
      if (toyDocs == null) {
        return right([]);
      }
      final toys = toyDocs.map(Toy.fromJson).toList();
      return Right(toys);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureEither<List<Toy>> fetchLatest10() async {
    try {
      final toyDocs = await _remoteDatabase.readCollection(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        orderBy: 'createdAt',
        limitToLast: 10,
      );

      if (toyDocs == null) {
        return right([]);
      }
      final toys = toyDocs.map(Toy.fromJson).toList();
      return Right(toys);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }
}
