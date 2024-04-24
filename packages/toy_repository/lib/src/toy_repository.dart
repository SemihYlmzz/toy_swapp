import 'package:cloud_storage/cloud_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:remote_database/remote_database.dart';
import 'package:toy_swapp/errors/errors.dart';

import '../toy_repository.dart';
import 'constants/constants.dart';

class ToyRepository {
  const ToyRepository({
    required RemoteDatabase remoteDatabase,
    required CloudStorage cloudStorage,
  })  : _remoteDatabase = remoteDatabase,
        _cloudStorage = cloudStorage;
  // INSTANCES
  final CloudStorage _cloudStorage;
  final RemoteDatabase _remoteDatabase;

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
}
