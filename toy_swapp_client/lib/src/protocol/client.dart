/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:toy_swapp_client/src/protocol/consumer.dart' as _i3;
import 'package:toy_swapp_client/src/protocol/support.dart' as _i4;
import 'package:toy_swapp_client/src/protocol/toy.dart' as _i5;
import 'package:toy_swapp_client/src/protocol/toy_and_owner_consumer.dart'
    as _i6;
import 'package:toy_swapp_client/src/protocol/toy_age.dart' as _i7;
import 'package:toy_swapp_client/src/protocol/toy_gender.dart' as _i8;
import 'package:toy_swapp_client/src/protocol/toy_condition.dart' as _i9;
import 'package:toy_swapp_client/src/protocol/toy_image_urls.dart' as _i10;
import 'package:serverpod_auth_client/module.dart' as _i11;
import 'protocol.dart' as _i12;

/// Can throw [Exception] with the following message:
/// no-consumer-found: No consumer found with the given authID.
/// {@category Endpoint}
class EndpointConsumer extends _i1.EndpointRef {
  EndpointConsumer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'consumer';

  _i2.Future<_i3.Consumer?> readWithID(int id) =>
      caller.callServerEndpoint<_i3.Consumer?>(
        'consumer',
        'readWithID',
        {'id': id},
      );

  _i2.Future<_i3.Consumer?> readWithAuthID(String authID) =>
      caller.callServerEndpoint<_i3.Consumer?>(
        'consumer',
        'readWithAuthID',
        {'authID': authID},
      );

  /// Can throw [Exception] with the following message:
  /// consumer-already-exists: A consumer with the given authID already exists.
  _i2.Future<_i3.Consumer> createConsumer(
    String authID,
    String firstName,
    String lastName,
    double currentLatitude,
    double currentLongitude,
    String avatarUrl128,
    String avatarUrl256,
    String avatarUrl512,
    String avatarUrl1024,
    String? email,
  ) =>
      caller.callServerEndpoint<_i3.Consumer>(
        'consumer',
        'createConsumer',
        {
          'authID': authID,
          'firstName': firstName,
          'lastName': lastName,
          'currentLatitude': currentLatitude,
          'currentLongitude': currentLongitude,
          'avatarUrl128': avatarUrl128,
          'avatarUrl256': avatarUrl256,
          'avatarUrl512': avatarUrl512,
          'avatarUrl1024': avatarUrl1024,
          'email': email,
        },
      );

  _i2.Future<_i3.Consumer> updateAvatarUrls(
    String authID,
    String avatarUrl128,
    String avatarUrl256,
    String avatarUrl512,
    String avatarUrl1024,
  ) =>
      caller.callServerEndpoint<_i3.Consumer>(
        'consumer',
        'updateAvatarUrls',
        {
          'authID': authID,
          'avatarUrl128': avatarUrl128,
          'avatarUrl256': avatarUrl256,
          'avatarUrl512': avatarUrl512,
          'avatarUrl1024': avatarUrl1024,
        },
      );

  _i2.Future<_i3.Consumer> updateFullName(
    String authID,
    String newFirstName,
    String newLastName,
  ) =>
      caller.callServerEndpoint<_i3.Consumer>(
        'consumer',
        'updateFullName',
        {
          'authID': authID,
          'newFirstName': newFirstName,
          'newLastName': newLastName,
        },
      );

  _i2.Future<_i3.Consumer> updateEmail(
    String authID,
    String newEmail,
  ) =>
      caller.callServerEndpoint<_i3.Consumer>(
        'consumer',
        'updateEmail',
        {
          'authID': authID,
          'newEmail': newEmail,
        },
      );
}

/// {@category Endpoint}
class EndpointSupport extends _i1.EndpointRef {
  EndpointSupport(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'support';

  _i2.Future<_i4.Support?> readWithAuthID(String authID) =>
      caller.callServerEndpoint<_i4.Support?>(
        'support',
        'readWithAuthID',
        {'authID': authID},
      );
}

/// {@category Endpoint}
class EndpointToy extends _i1.EndpointRef {
  EndpointToy(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'toy';

  _i2.Future<List<_i5.Toy>> read12WithOwnerConsumerID(
    int ownerConsumerID,
    int offset,
  ) =>
      caller.callServerEndpoint<List<_i5.Toy>>(
        'toy',
        'read12WithOwnerConsumerID',
        {
          'ownerConsumerID': ownerConsumerID,
          'offset': offset,
        },
      );

  /// Can throw [Exception] with the following message:
  /// no-toy-found: No toy found with the given toyID.
  _i2.Future<_i5.Toy> readWithToyID(int toyID) =>
      caller.callServerEndpoint<_i5.Toy>(
        'toy',
        'readWithToyID',
        {'toyID': toyID},
      );

  /// Can throw [Exception] with the following message:
  /// toy-already-exists: A toy with the given toyID already exists.
  _i2.Future<_i6.ToyAndOwnerConsumer> createToy(
    _i7.ToyAge age,
    _i8.ToyGender gender,
    _i9.ToyCondition condition,
    String description,
    List<_i10.ToyImageUrls> imageUrlList,
    String name,
    int ownerConsumerID,
    int toyID,
  ) =>
      caller.callServerEndpoint<_i6.ToyAndOwnerConsumer>(
        'toy',
        'createToy',
        {
          'age': age,
          'gender': gender,
          'condition': condition,
          'description': description,
          'imageUrlList': imageUrlList,
          'name': name,
          'ownerConsumerID': ownerConsumerID,
          'toyID': toyID,
        },
      );

  _i2.Future<List<_i6.ToyAndOwnerConsumer>> readLikeableToysWithOwnerConsumer(
    int currentConsumerID,
    int offset,
  ) =>
      caller.callServerEndpoint<List<_i6.ToyAndOwnerConsumer>>(
        'toy',
        'readLikeableToysWithOwnerConsumer',
        {
          'currentConsumerID': currentConsumerID,
          'offset': offset,
        },
      );

  _i2.Future<_i5.Toy> likeToy(
    int toyID,
    int likerConsumerID,
  ) =>
      caller.callServerEndpoint<_i5.Toy>(
        'toy',
        'likeToy',
        {
          'toyID': toyID,
          'likerConsumerID': likerConsumerID,
        },
      );

  _i2.Future<_i5.Toy> unlikeToy(
    int toyID,
    int unlikerConsumerID,
  ) =>
      caller.callServerEndpoint<_i5.Toy>(
        'toy',
        'unlikeToy',
        {
          'toyID': toyID,
          'unlikerConsumerID': unlikerConsumerID,
        },
      );

  _i2.Future<_i3.Consumer> deleteToy(
    int toyID,
    int currentConsumerID,
  ) =>
      caller.callServerEndpoint<_i3.Consumer>(
        'toy',
        'deleteToy',
        {
          'toyID': toyID,
          'currentConsumerID': currentConsumerID,
        },
      );

  _i2.Future<List<_i6.ToyAndOwnerConsumer>> fetchMoreAcceptableToys(
          int offset) =>
      caller.callServerEndpoint<List<_i6.ToyAndOwnerConsumer>>(
        'toy',
        'fetchMoreAcceptableToys',
        {'offset': offset},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i11.Caller(client);
  }

  late final _i11.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i12.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    consumer = EndpointConsumer(this);
    support = EndpointSupport(this);
    toy = EndpointToy(this);
    modules = _Modules(this);
  }

  late final EndpointConsumer consumer;

  late final EndpointSupport support;

  late final EndpointToy toy;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'consumer': consumer,
        'support': support,
        'toy': toy,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
