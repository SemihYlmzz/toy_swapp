/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ToyImageUrls extends _i1.SerializableEntity {
  ToyImageUrls._({
    required this.url1024,
    required this.url128,
    required this.url256,
    required this.url512,
  });

  factory ToyImageUrls({
    required String url1024,
    required String url128,
    required String url256,
    required String url512,
  }) = _ToyImageUrlsImpl;

  factory ToyImageUrls.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ToyImageUrls(
      url1024: serializationManager
          .deserialize<String>(jsonSerialization['url1024']),
      url128:
          serializationManager.deserialize<String>(jsonSerialization['url128']),
      url256:
          serializationManager.deserialize<String>(jsonSerialization['url256']),
      url512:
          serializationManager.deserialize<String>(jsonSerialization['url512']),
    );
  }

  String url1024;

  String url128;

  String url256;

  String url512;

  ToyImageUrls copyWith({
    String? url1024,
    String? url128,
    String? url256,
    String? url512,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'url1024': url1024,
      'url128': url128,
      'url256': url256,
      'url512': url512,
    };
  }
}

class _ToyImageUrlsImpl extends ToyImageUrls {
  _ToyImageUrlsImpl({
    required String url1024,
    required String url128,
    required String url256,
    required String url512,
  }) : super._(
          url1024: url1024,
          url128: url128,
          url256: url256,
          url512: url512,
        );

  @override
  ToyImageUrls copyWith({
    String? url1024,
    String? url128,
    String? url256,
    String? url512,
  }) {
    return ToyImageUrls(
      url1024: url1024 ?? this.url1024,
      url128: url128 ?? this.url128,
      url256: url256 ?? this.url256,
      url512: url512 ?? this.url512,
    );
  }
}
