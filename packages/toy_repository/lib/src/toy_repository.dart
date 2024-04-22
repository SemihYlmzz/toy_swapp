import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../toy_repository.dart';
import 'constants/constants.dart';

class ToyRepository {
  const ToyRepository({
    required FirebaseFirestore firebaseFirestore,
    required FirebaseStorage firebaseStorage,
  })  : _firebaseFirestore = firebaseFirestore,
        _firebaseStorage = firebaseStorage;
  // INSTANCES
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  // Functions
  Future<void> create({
    required String ownerAuthId,
    required String name,
    required String description,
    required List<ToyImage> toyImageList,
    required ToyAge toyAge,
    required ToyGender toyGender,
    required ToyCondition toyCondition,
  }) async {
    final uploadedToyImageUrls = <ToyImageUrls>[];
    // Todo:
    // Add Uint8List length and size Checker value object

    final id = DateTime.now().millisecondsSinceEpoch.toString() + ownerAuthId;
    try {
      for (final toyImage in toyImageList) {
        final value = toyImage.value;
        final size128Url =
            await _uploadToyImagesToStorage(value.toyImage128, id, 'size128');
        final size256Url =
            await _uploadToyImagesToStorage(value.toyImage256, id, 'size256');
        final size512Url =
            await _uploadToyImagesToStorage(value.toyImage512, id, 'size512');
        final size1024Url =
            await _uploadToyImagesToStorage(value.toyImage1024, id, 'size1024');

        uploadedToyImageUrls.add(
          ToyImageUrls(
            url1024: size128Url,
            url128: size256Url,
            url256: size512Url,
            url512: size1024Url,
          ),
        );
      }
      if (uploadedToyImageUrls.length != toyImageList.length) {
        throw Exception('Image upload failed');
      }
      final creatableToy = Toy(
        ownerAuthId: ownerAuthId,
        id: id,
        name: name,
        description: description,
        imageUrlList: uploadedToyImageUrls,
        details: ToyDetails(
          age: toyAge,
          gender: toyGender,
          condition: toyCondition,
        ),
      );
      await _firebaseFirestore
          .collection(ToyRepositoryStrings.toysCollectionPath)
          .add(creatableToy.toJson());
    } catch (exception) {
      throw Exception('Toy creation failed');
    }
  } // Special Functions

  // Todo:
  // Shared function with ConsumerRepository
  Future<String> _uploadToyImagesToStorage(
    Uint8List image,
    String toyId,
    String imageKey,
  ) async {
    try {
      final storageRef = _firebaseStorage.ref().child(
            '${ToyRepositoryStrings.toysCollectionPath}'
            '/$toyId'
            '/images'
            '/$imageKey',
          );
      final task = await storageRef.putData(image);
      return await task.ref.getDownloadURL();
    } catch (exception) {
      rethrow;
    }
  }
}
