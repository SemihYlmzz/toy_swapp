import 'package:serverpod/serverpod.dart';
import 'package:toy_swapp_server/src/generated/protocol.dart';

/// Can throw [Exception] with the following message:
/// no-consumer-found: No consumer found with the given authID.
class ConsumerEndpoint extends Endpoint {
  Future<Consumer?> readWithID(Session session, int id) async {
    return await Consumer.db.findById(session, id);
  }

  Future<Consumer?> readWithAuthID(Session session, String authID) async {
    print('TEST');
    final consumer = await Consumer.db.findFirstRow(
      session,
      where: (toyTable) {
        return toyTable.authId.equals(authID);
      },
    );

    return consumer;
  }

  // Create a new consumer
  /// Can throw [Exception] with the following message:
  /// consumer-already-exists: A consumer with the given authID already exists.
  Future<Consumer> createConsumer(
    Session session,
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
  ) async {
    /// Check if a consumer with the given authID already exists
    final consumerList = await Consumer.db.find(
      session,
      where: (table) => table.authId.equals(authID),
    );
    if (consumerList.isNotEmpty) {
      throw Exception('consumer-already-exists');
    }

    final consumer = Consumer(
      authId: authID,
      firstName: firstName,
      lastName: lastName,
      currentLatitude: currentLatitude,
      currentLongitude: currentLongitude,
      avatarUrl128: avatarUrl128,
      avatarUrl256: avatarUrl256,
      avatarUrl512: avatarUrl512,
      avatarUrl1024: avatarUrl1024,
      toyCount: 0,
      swapCount: 0,
      switchChanceCount: 0,
      isDeletingAccount: false,
      email: email,
    );
    final consumerWithID = await Consumer.db.insertRow(session, consumer);
    return consumerWithID;
  }

  Future<Consumer> updateAvatarUrls(
    Session session,
    String authID,
    String avatarUrl128,
    String avatarUrl256,
    String avatarUrl512,
    String avatarUrl1024,
  ) async {
    final consumerList = await Consumer.db.find(
      session,
      where: (table) => table.authId.equals(authID),
    );
    if (consumerList.isEmpty) {
      throw Exception('no-consumer-found');
    }
    final consumer = consumerList.first;
    consumer.avatarUrl128 = avatarUrl128;
    consumer.avatarUrl256 = avatarUrl256;
    consumer.avatarUrl512 = avatarUrl512;
    consumer.avatarUrl1024 = avatarUrl1024;
    await Consumer.db.updateRow(session, consumer);
    return consumer;
  }

  Future<Consumer> updateFullName(
    Session session,
    String authID,
    String newFirstName,
    String newLastName,
  ) async {
    final consumerList = await Consumer.db.find(
      session,
      where: (table) => table.authId.equals(authID),
    );
    if (consumerList.isEmpty) {
      throw Exception('no-consumer-found');
    }
    final consumer = consumerList.first;
    consumer.firstName = newFirstName;
    consumer.lastName = newLastName;
    await Consumer.db.updateRow(session, consumer);
    return consumer;
  }

  Future<Consumer> updateEmail(
    Session session,
    String authID,
    String newEmail,
  ) async {
    final consumerList = await Consumer.db.find(
      session,
      where: (table) => table.authId.equals(authID),
    );
    if (consumerList.isEmpty) {
      throw Exception('no-consumer-found');
    }
    final consumer = consumerList.first;
    consumer.email = newEmail;
    await Consumer.db.updateRow(session, consumer);
    return consumer;
  }
}
