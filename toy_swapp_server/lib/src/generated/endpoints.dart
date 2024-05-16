/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/consumer_endpoint.dart' as _i2;
import '../endpoints/support_endpoint.dart' as _i3;
import '../endpoints/toy_endpoint.dart' as _i4;
import 'package:toy_swapp_server/src/generated/toy_age.dart' as _i5;
import 'package:toy_swapp_server/src/generated/toy_gender.dart' as _i6;
import 'package:toy_swapp_server/src/generated/toy_condition.dart' as _i7;
import 'package:toy_swapp_server/src/generated/toy_image_urls.dart' as _i8;
import 'package:serverpod_auth_server/module.dart' as _i9;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'consumer': _i2.ConsumerEndpoint()
        ..initialize(
          server,
          'consumer',
          null,
        ),
      'support': _i3.SupportEndpoint()
        ..initialize(
          server,
          'support',
          null,
        ),
      'toy': _i4.ToyEndpoint()
        ..initialize(
          server,
          'toy',
          null,
        ),
    };
    connectors['consumer'] = _i1.EndpointConnector(
      name: 'consumer',
      endpoint: endpoints['consumer']!,
      methodConnectors: {
        'readWithID': _i1.MethodConnector(
          name: 'readWithID',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['consumer'] as _i2.ConsumerEndpoint).readWithID(
            session,
            params['id'],
          ),
        ),
        'readWithAuthID': _i1.MethodConnector(
          name: 'readWithAuthID',
          params: {
            'authID': _i1.ParameterDescription(
              name: 'authID',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['consumer'] as _i2.ConsumerEndpoint).readWithAuthID(
            session,
            params['authID'],
          ),
        ),
        'createConsumer': _i1.MethodConnector(
          name: 'createConsumer',
          params: {
            'authID': _i1.ParameterDescription(
              name: 'authID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'firstName': _i1.ParameterDescription(
              name: 'firstName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'lastName': _i1.ParameterDescription(
              name: 'lastName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'currentLatitude': _i1.ParameterDescription(
              name: 'currentLatitude',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'currentLongitude': _i1.ParameterDescription(
              name: 'currentLongitude',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'avatarUrl128': _i1.ParameterDescription(
              name: 'avatarUrl128',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl256': _i1.ParameterDescription(
              name: 'avatarUrl256',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl512': _i1.ParameterDescription(
              name: 'avatarUrl512',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl1024': _i1.ParameterDescription(
              name: 'avatarUrl1024',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['consumer'] as _i2.ConsumerEndpoint).createConsumer(
            session,
            params['authID'],
            params['firstName'],
            params['lastName'],
            params['currentLatitude'],
            params['currentLongitude'],
            params['avatarUrl128'],
            params['avatarUrl256'],
            params['avatarUrl512'],
            params['avatarUrl1024'],
            params['email'],
          ),
        ),
        'updateAvatarUrls': _i1.MethodConnector(
          name: 'updateAvatarUrls',
          params: {
            'authID': _i1.ParameterDescription(
              name: 'authID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl128': _i1.ParameterDescription(
              name: 'avatarUrl128',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl256': _i1.ParameterDescription(
              name: 'avatarUrl256',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl512': _i1.ParameterDescription(
              name: 'avatarUrl512',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'avatarUrl1024': _i1.ParameterDescription(
              name: 'avatarUrl1024',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['consumer'] as _i2.ConsumerEndpoint).updateAvatarUrls(
            session,
            params['authID'],
            params['avatarUrl128'],
            params['avatarUrl256'],
            params['avatarUrl512'],
            params['avatarUrl1024'],
          ),
        ),
        'updateFullName': _i1.MethodConnector(
          name: 'updateFullName',
          params: {
            'authID': _i1.ParameterDescription(
              name: 'authID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newFirstName': _i1.ParameterDescription(
              name: 'newFirstName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newLastName': _i1.ParameterDescription(
              name: 'newLastName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['consumer'] as _i2.ConsumerEndpoint).updateFullName(
            session,
            params['authID'],
            params['newFirstName'],
            params['newLastName'],
          ),
        ),
        'updateEmail': _i1.MethodConnector(
          name: 'updateEmail',
          params: {
            'authID': _i1.ParameterDescription(
              name: 'authID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newEmail': _i1.ParameterDescription(
              name: 'newEmail',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['consumer'] as _i2.ConsumerEndpoint).updateEmail(
            session,
            params['authID'],
            params['newEmail'],
          ),
        ),
      },
    );
    connectors['support'] = _i1.EndpointConnector(
      name: 'support',
      endpoint: endpoints['support']!,
      methodConnectors: {
        'readWithAuthID': _i1.MethodConnector(
          name: 'readWithAuthID',
          params: {
            'authID': _i1.ParameterDescription(
              name: 'authID',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['support'] as _i3.SupportEndpoint).readWithAuthID(
            session,
            params['authID'],
          ),
        )
      },
    );
    connectors['toy'] = _i1.EndpointConnector(
      name: 'toy',
      endpoint: endpoints['toy']!,
      methodConnectors: {
        'read12WithOwnerConsumerID': _i1.MethodConnector(
          name: 'read12WithOwnerConsumerID',
          params: {
            'ownerConsumerID': _i1.ParameterDescription(
              name: 'ownerConsumerID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).read12WithOwnerConsumerID(
            session,
            params['ownerConsumerID'],
            params['offset'],
          ),
        ),
        'readWithToyID': _i1.MethodConnector(
          name: 'readWithToyID',
          params: {
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).readWithToyID(
            session,
            params['toyID'],
          ),
        ),
        'createToy': _i1.MethodConnector(
          name: 'createToy',
          params: {
            'age': _i1.ParameterDescription(
              name: 'age',
              type: _i1.getType<_i5.ToyAge>(),
              nullable: false,
            ),
            'gender': _i1.ParameterDescription(
              name: 'gender',
              type: _i1.getType<_i6.ToyGender>(),
              nullable: false,
            ),
            'condition': _i1.ParameterDescription(
              name: 'condition',
              type: _i1.getType<_i7.ToyCondition>(),
              nullable: false,
            ),
            'description': _i1.ParameterDescription(
              name: 'description',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'imageUrlList': _i1.ParameterDescription(
              name: 'imageUrlList',
              type: _i1.getType<List<_i8.ToyImageUrls>>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'ownerConsumerID': _i1.ParameterDescription(
              name: 'ownerConsumerID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).createToy(
            session,
            params['age'],
            params['gender'],
            params['condition'],
            params['description'],
            params['imageUrlList'],
            params['name'],
            params['ownerConsumerID'],
            params['toyID'],
          ),
        ),
        'readLikeableToysWithOwnerConsumer': _i1.MethodConnector(
          name: 'readLikeableToysWithOwnerConsumer',
          params: {
            'currentConsumerID': _i1.ParameterDescription(
              name: 'currentConsumerID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint)
                  .readLikeableToysWithOwnerConsumer(
            session,
            params['currentConsumerID'],
            params['offset'],
          ),
        ),
        'openPublic': _i1.MethodConnector(
          name: 'openPublic',
          params: {
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'requestorAuthID': _i1.ParameterDescription(
              name: 'requestorAuthID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).openPublic(
            session,
            params['toyID'],
            params['requestorAuthID'],
          ),
        ),
        'closePublic': _i1.MethodConnector(
          name: 'closePublic',
          params: {
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'requestorAuthID': _i1.ParameterDescription(
              name: 'requestorAuthID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).closePublic(
            session,
            params['toyID'],
            params['requestorAuthID'],
          ),
        ),
        'likeToy': _i1.MethodConnector(
          name: 'likeToy',
          params: {
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'likerConsumerID': _i1.ParameterDescription(
              name: 'likerConsumerID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).likeToy(
            session,
            params['toyID'],
            params['likerConsumerID'],
          ),
        ),
        'unlikeToy': _i1.MethodConnector(
          name: 'unlikeToy',
          params: {
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'unlikerConsumerID': _i1.ParameterDescription(
              name: 'unlikerConsumerID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).unlikeToy(
            session,
            params['toyID'],
            params['unlikerConsumerID'],
          ),
        ),
        'deleteToy': _i1.MethodConnector(
          name: 'deleteToy',
          params: {
            'toyID': _i1.ParameterDescription(
              name: 'toyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'currentConsumerID': _i1.ParameterDescription(
              name: 'currentConsumerID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).deleteToy(
            session,
            params['toyID'],
            params['currentConsumerID'],
          ),
        ),
        'fetchMoreAcceptableToys': _i1.MethodConnector(
          name: 'fetchMoreAcceptableToys',
          params: {
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).fetchMoreAcceptableToys(
            session,
            params['offset'],
          ),
        ),
        'acceptToy': _i1.MethodConnector(
          name: 'acceptToy',
          params: {
            'acceptedToyID': _i1.ParameterDescription(
              name: 'acceptedToyID',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'accepterAuthID': _i1.ParameterDescription(
              name: 'accepterAuthID',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['toy'] as _i4.ToyEndpoint).acceptToy(
            session,
            params['acceptedToyID'],
            params['accepterAuthID'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i9.Endpoints()..initializeEndpoints(server);
  }
}
