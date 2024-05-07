import 'dart:async';

import 'package:cloud_storage/cloud_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/errors/errors.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../toy_repository.dart';
import 'constants/constants.dart';

class ToyRepository {
  ToyRepository({
    required Client client,
    required CloudStorage cloudStorage,
  })  : _client = client,
        _cloudStorage = cloudStorage {
    ownedToysStream.listen((event) {
      ownedToys = event;
    });
  }
  // INSTANCES
  final CloudStorage _cloudStorage;
  final Client _client;

  // VARIABLES
  // Current Consumer
  final _ownedToysStreamController = StreamController<List<Toy>?>.broadcast();
  Stream<List<Toy>?> get ownedToysStream => _ownedToysStreamController.stream;
  List<Toy>? ownedToys;

  // Functions
  FutureEither<ToyAndConsumer> create({
    required String ownerConsumerAuthID,
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
    final createdMillis = DateTime.now().millisecondsSinceEpoch;
    final toyID = '$createdMillis$ownerConsumerAuthID';

    final path = '${ToyRepositoryStrings.toysCollectionPath}'
        '/$toyID'
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
      final toyAndConsumer = await _client.toy.createToy(
        toyAge,
        toyGender,
        toyCondition,
        toyDescription.value,
        uploadedToyImageUrls,
        toyName.value,
        ownerConsumerAuthID,
        toyID,
      );

      return Right(toyAndConsumer);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureEither<Toy> readToy({
    required String toyID,
  }) async {
    try {
      final readedToy = await _client.toy.readWithToyID(toyID);

      // If fetched toy is owned.
      // Update the ownedToy also.
      if (ownedToys?.contains(readedToy) ?? false) {
        final updatedList = List<Toy>.from(ownedToys!);
        final toyListIndex = updatedList.indexWhere(
          (element) => element.toyID == toyID,
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
    required int toyID,
  }) async {
    return const Right(unit);
    // final updatableToy = ownedToys?.firstWhere(
    //   (element) => element.id == toyId,
    // );
    // if (updatableToy == null) {
    //   return const Left(ToyRepositoryException.unknown());
    // }

    // final updatedToy = updatableToy.copyWith(isPublic: true);

    // final updatedList = List<Toy>.from(ownedToys!);
    // final toyListIndex = updatedList.indexWhere(
    //   (element) => element.id == toyId,
    // );
    // updatedList[toyListIndex] = updatedToy;
    // _ownedToysStreamController.sink.add(updatedList);
    // try {
    //   await _remoteDatabase.updateDoc(
    //     collectionID: ToyRepositoryStrings.toysCollectionPath,
    //     documentID: toyId,
    //     jsonData: updatedToy.toJson(),
    //   );
    //   return const Right(unit);
    // } catch (exception) {
    //   final updatedList = List<Toy>.from(ownedToys!);
    //   final toyListIndex = updatedList.indexWhere(
    //     (element) => element.id == toyId,
    //   );
    //   updatedList[toyListIndex] = updatableToy.copyWith(isPublic: false);
    //   _ownedToysStreamController.sink.add(updatedList);
    //   return const Left(ToyRepositoryException.unknown());
    // }
  }

  FutureUnit closeToPublic({
    required int toyID,
  }) async {
    return const Right(unit);
    // final updatableToy = ownedToys?.firstWhere(
    //   (element) => element.id == toyId,
    // );
    // if (updatableToy == null) {
    //   return const Left(ToyRepositoryException.unknown());
    // }

    // final updatedToy = updatableToy.copyWith(isPublic: false);

    // final updatedList = List<Toy>.from(ownedToys!);
    // final toyListIndex = updatedList.indexWhere(
    //   (element) => element.id == toyId,
    // );
    // updatedList[toyListIndex] = updatedToy;
    // _ownedToysStreamController.sink.add(updatedList);

    // try {
    //   await _remoteDatabase.updateDoc(
    //     collectionID: ToyRepositoryStrings.toysCollectionPath,
    //     documentID: toyId,
    //     jsonData: updatedToy.toJson(),
    //   );

    //   return const Right(unit);
    // } catch (exception) {
    //   final updatedList = List<Toy>.from(ownedToys!);
    //   final toyListIndex = updatedList.indexWhere(
    //     (element) => element.id == toyId,
    //   );
    //   updatedList[toyListIndex] = updatableToy.copyWith(isPublic: true);
    //   _ownedToysStreamController.sink.add(updatedList);

    //   return const Left(ToyRepositoryException.unknown());
    // }
  }

  FutureUnit makeToyPrivate() async {
    return const Right(unit);
  }

  FutureEither<List<Toy>> fetchMoreOwnedToys({
    required String currentAuthId,
    required bool isStartOver,
  }) async {
    try {
      if (isStartOver) {
        clearOwnedToys();
      }

      final fetchedToys = await _client.toy.read12WithOwnerConsumerID(
        currentAuthId,
        isStartOver || ownedToys == null ? 0 : ownedToys!.length,
      );

      final newOwnedToys = List<Toy>.from(fetchedToys.reversed)
        ..addAll(ownedToys ?? []);
      _ownedToysStreamController.sink.add(newOwnedToys);
      return Right(fetchedToys);
    } catch (exception) {
      return const Left(ToyRepositoryException.unknown());
    }
  }

  FutureEither<List<Toy>> fetch10LikeableToysLatest({
    required String currentAuthId,
    required Toy? beforeThisToy,
  }) async {
    return const Right([]);
    // try {
    //   final toyDocs = await _remoteDatabase.readCollection(
    //     collectionID: ToyRepositoryStrings.toysCollectionPath,
    //     fieldIsNotEqualTo: (
    //       field: 'ownerAuthId',
    //       value: currentAuthId,
    //     ),
    //     fieldIsEqualToList: [
    //       (
    //         field: 'isPublic',
    //         value: true,
    //       ),
    //       (
    //         field: 'isLocked',
    //         value: false,
    //       ),
    //     ],
    //     endBefore: beforeThisToy != null
    //         ? [beforeThisToy.createdAt.toIso8601String()]
    //         : null,
    //     orderBy: 'createdAt',
    //     limitToLast: 10,
    //   );

    //   if (toyDocs == null) {
    //     return right([]);
    //   }
    //   final toys = toyDocs.map(Toy.fromJson).toList();
    //   return Right(toys);
    // } catch (exception) {
    //   return const Left(ToyRepositoryException.unknown());
    // }
  }

  void sinkAddOwnedToy(Toy addedToy) {
    final updatedList = List<Toy>.from(ownedToys ?? [])..add(addedToy);
    _ownedToysStreamController.sink.add(updatedList);
  }

  void clearOwnedToys() {
    _ownedToysStreamController.sink.add(null);
  }
}
