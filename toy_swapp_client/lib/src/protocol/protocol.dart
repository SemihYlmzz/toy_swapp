/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'consumer.dart' as _i2;
import 'example.dart' as _i3;
import 'like.dart' as _i4;
import 'support.dart' as _i5;
import 'toy.dart' as _i6;
import 'toy_age.dart' as _i7;
import 'toy_and_owner_consumer.dart' as _i8;
import 'toy_condition.dart' as _i9;
import 'toy_gender.dart' as _i10;
import 'toy_image_urls.dart' as _i11;
import 'protocol.dart' as _i12;
import 'package:toy_swapp_client/src/protocol/toy.dart' as _i13;
import 'package:toy_swapp_client/src/protocol/toy_image_urls.dart' as _i14;
import 'package:toy_swapp_client/src/protocol/toy_and_owner_consumer.dart'
    as _i15;
import 'package:serverpod_auth_client/module.dart' as _i16;
export 'consumer.dart';
export 'example.dart';
export 'like.dart';
export 'support.dart';
export 'toy.dart';
export 'toy_age.dart';
export 'toy_and_owner_consumer.dart';
export 'toy_condition.dart';
export 'toy_gender.dart';
export 'toy_image_urls.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Consumer) {
      return _i2.Consumer.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Like) {
      return _i4.Like.fromJson(data, this) as T;
    }
    if (t == _i5.Support) {
      return _i5.Support.fromJson(data, this) as T;
    }
    if (t == _i6.Toy) {
      return _i6.Toy.fromJson(data, this) as T;
    }
    if (t == _i7.ToyAge) {
      return _i7.ToyAge.fromJson(data) as T;
    }
    if (t == _i8.ToyAndOwnerConsumer) {
      return _i8.ToyAndOwnerConsumer.fromJson(data, this) as T;
    }
    if (t == _i9.ToyCondition) {
      return _i9.ToyCondition.fromJson(data) as T;
    }
    if (t == _i10.ToyGender) {
      return _i10.ToyGender.fromJson(data) as T;
    }
    if (t == _i11.ToyImageUrls) {
      return _i11.ToyImageUrls.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Consumer?>()) {
      return (data != null ? _i2.Consumer.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Like?>()) {
      return (data != null ? _i4.Like.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Support?>()) {
      return (data != null ? _i5.Support.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Toy?>()) {
      return (data != null ? _i6.Toy.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.ToyAge?>()) {
      return (data != null ? _i7.ToyAge.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.ToyAndOwnerConsumer?>()) {
      return (data != null
          ? _i8.ToyAndOwnerConsumer.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i9.ToyCondition?>()) {
      return (data != null ? _i9.ToyCondition.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ToyGender?>()) {
      return (data != null ? _i10.ToyGender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ToyImageUrls?>()) {
      return (data != null ? _i11.ToyImageUrls.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<List<_i12.Like>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i12.Like>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i12.ToyImageUrls>) {
      return (data as List)
          .map((e) => deserialize<_i12.ToyImageUrls>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<_i12.Like>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i12.Like>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i13.Toy>) {
      return (data as List).map((e) => deserialize<_i13.Toy>(e)).toList()
          as dynamic;
    }
    if (t == List<_i14.ToyImageUrls>) {
      return (data as List)
          .map((e) => deserialize<_i14.ToyImageUrls>(e))
          .toList() as dynamic;
    }
    if (t == List<_i15.ToyAndOwnerConsumer>) {
      return (data as List)
          .map((e) => deserialize<_i15.ToyAndOwnerConsumer>(e))
          .toList() as dynamic;
    }
    try {
      return _i16.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i16.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Consumer) {
      return 'Consumer';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Like) {
      return 'Like';
    }
    if (data is _i5.Support) {
      return 'Support';
    }
    if (data is _i6.Toy) {
      return 'Toy';
    }
    if (data is _i7.ToyAge) {
      return 'ToyAge';
    }
    if (data is _i8.ToyAndOwnerConsumer) {
      return 'ToyAndOwnerConsumer';
    }
    if (data is _i9.ToyCondition) {
      return 'ToyCondition';
    }
    if (data is _i10.ToyGender) {
      return 'ToyGender';
    }
    if (data is _i11.ToyImageUrls) {
      return 'ToyImageUrls';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i16.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Consumer') {
      return deserialize<_i2.Consumer>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Like') {
      return deserialize<_i4.Like>(data['data']);
    }
    if (data['className'] == 'Support') {
      return deserialize<_i5.Support>(data['data']);
    }
    if (data['className'] == 'Toy') {
      return deserialize<_i6.Toy>(data['data']);
    }
    if (data['className'] == 'ToyAge') {
      return deserialize<_i7.ToyAge>(data['data']);
    }
    if (data['className'] == 'ToyAndOwnerConsumer') {
      return deserialize<_i8.ToyAndOwnerConsumer>(data['data']);
    }
    if (data['className'] == 'ToyCondition') {
      return deserialize<_i9.ToyCondition>(data['data']);
    }
    if (data['className'] == 'ToyGender') {
      return deserialize<_i10.ToyGender>(data['data']);
    }
    if (data['className'] == 'ToyImageUrls') {
      return deserialize<_i11.ToyImageUrls>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
