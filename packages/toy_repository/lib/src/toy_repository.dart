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
  FutureEither<Toy> create({
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
        isPublic: false,
        isLocked: false,
        likersConsumerIds: [],
        safeToPublicMarkerSupportId: null,
      );

      _remoteDatabase.batchSetDoc(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        documentID: id,
        jsonData: creatableToy.toJson(),
      );
      return Right(creatableToy);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureEither<Toy> readToy({
    required String toyId,
  }) async {
    try {
      final toyDoc = await _remoteDatabase.readDoc(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        documentID: toyId,
      );
      if (toyDoc == null) {
        return const Left(ToyRepositoryException.unknown());
      }
      if (toyDoc.isEmpty) {
        return const Left(ToyRepositoryException.unknown());
      }

      final readedToy = Toy.fromJson(toyDoc);
      // If fetched toy is owned.
      // Update the ownedToy also.
      if (ownedToys?.contains(readedToy) ?? false) {
        final updatedList = List<Toy>.from(ownedToys!);
        final toyListIndex = updatedList.indexWhere(
          (element) => element.id == toyId,
        );
        updatedList[toyListIndex] = readedToy;
        _ownedToysStreamController.sink.add(updatedList);
      }
      // Todo:
      // Feed screen için de sorulabilir.
      return Right(readedToy);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureUnit openToPublic({
    required String toyId,
  }) async {
    final updatableToy = ownedToys?.firstWhere(
      (element) => element.id == toyId,
    );
    if (updatableToy == null) {
      return const Left(ToyRepositoryException.unknown());
    }

    final updatedToy = updatableToy.copyWith(isPublic: true);

    final updatedList = List<Toy>.from(ownedToys!);
    final toyListIndex = updatedList.indexWhere(
      (element) => element.id == toyId,
    );
    updatedList[toyListIndex] = updatedToy;
    _ownedToysStreamController.sink.add(updatedList);
    try {
      await _remoteDatabase.updateDoc(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        documentID: toyId,
        jsonData: updatedToy.toJson(),
      );
      return const Right(unit);
    } catch (exception) {
      final updatedList = List<Toy>.from(ownedToys!);
      final toyListIndex = updatedList.indexWhere(
        (element) => element.id == toyId,
      );
      updatedList[toyListIndex] = updatableToy.copyWith(isPublic: false);
      _ownedToysStreamController.sink.add(updatedList);
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureUnit closeToPublic({
    required String toyId,
  }) async {
    final updatableToy = ownedToys?.firstWhere(
      (element) => element.id == toyId,
    );
    if (updatableToy == null) {
      return const Left(ToyRepositoryException.unknown());
    }

    final updatedToy = updatableToy.copyWith(isPublic: false);

    final updatedList = List<Toy>.from(ownedToys!);
    final toyListIndex = updatedList.indexWhere(
      (element) => element.id == toyId,
    );
    updatedList[toyListIndex] = updatedToy;
    _ownedToysStreamController.sink.add(updatedList);

    try {
      await _remoteDatabase.updateDoc(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        documentID: toyId,
        jsonData: updatedToy.toJson(),
      );

      return const Right(unit);
    } catch (exception) {
      final updatedList = List<Toy>.from(ownedToys!);
      final toyListIndex = updatedList.indexWhere(
        (element) => element.id == toyId,
      );
      updatedList[toyListIndex] = updatableToy.copyWith(isPublic: true);
      _ownedToysStreamController.sink.add(updatedList);

      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureUnit makeToyPrivate() async {
    return const Right(unit);
  }

  FutureEither<List<Toy>> fetchLastest12Owned({
    required String ownerAuthId,
  }) async {
    try {
      final toyDocs = await _remoteDatabase.readCollection(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        orderBy: 'createdAt',
        limitToLast: 12,
        fieldIsEqualToList: [
          (field: 'ownerAuthId', value: ownerAuthId),
        ],
      );

      if (toyDocs == null || toyDocs.isEmpty) {
        _ownedToysStreamController.sink.add([]);
        return const Right([]);
      }

      final toys = toyDocs.map(Toy.fromJson).toList();
      _ownedToysStreamController.sink.add(toys);
      return Right(toys);
    } catch (exception) {
      print(exception);
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
        fieldIsEqualToList: [(field: 'ownerAuthId', value: ownerAuthId)],
        orderBy: 'createdAt',
        limitToLast: 12,
        endBefore: [oldestOwnedToy.createdAt.toIso8601String()],
      );
      if (toyDocs == null || toyDocs.isEmpty) {
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

  FutureEither<List<Toy>> fetch10LikeableToysLatest({
    required String currentAuthId,
    required Toy? beforeThisToy,
  }) async {
    try {
      final toyDocs = await _remoteDatabase.readCollection(
        collectionID: ToyRepositoryStrings.toysCollectionPath,
        fieldIsNotEqualTo: (
          field: 'ownerAuthId',
          value: currentAuthId,
        ),
        fieldIsEqualToList: [
          (
            field: 'isPublic',
            value: true,
          ),
          (
            field: 'isLocked',
            value: false,
          ),
        ],
        endBefore: beforeThisToy != null
            ? [beforeThisToy.createdAt.toIso8601String()]
            : null,
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

  void sinkAddOwnedToy(Toy addedToy) {
    final updatedList = List<Toy>.from(ownedToys ?? [])..add(addedToy);
    _ownedToysStreamController.sink.add(updatedList);
  }

  void clearOwnedToys() {
    _ownedToysStreamController.sink.add([]);
  }
}
