import 'package:serverpod/serverpod.dart';
import 'package:toy_swapp_server/src/generated/protocol.dart';

const acceptableToyChannel = "acceptable-toy-channel";

class ToyEndpoint extends Endpoint {
  // Read Newest 12 Toys or Newest 12 Toys after the given toyID
  Future<List<Toy>> read12WithOwnerConsumerID(
    Session session,
    int ownerConsumerID,
    int offset,
  ) async {
    final toyList = await Toy.db.find(
      session,
      where: (table) => table.ownerConsumerID.equals(ownerConsumerID),
      limit: 12,
      orderBy: (table) => table.createdAt,
      orderDescending: true,
      offset: offset,
    );
    return toyList;
  }

  // Read a toy
  /// Can throw [Exception] with the following message:
  /// no-toy-found: No toy found with the given toyID.
  Future<Toy> readWithToyID(
    Session session,
    int toyID,
  ) async {
    final toy = await Toy.db.findById(session, toyID);
    if (toy == null) {
      throw Exception('no-toy-found');
    }
    return toy;
  }

  // Create a new toy
  /// Can throw [Exception] with the following message:
  /// toy-already-exists: A toy with the given toyID already exists.
  Future<ToyAndOwnerConsumer> createToy(
    Session session,
    ToyAge age,
    ToyGender gender,
    ToyCondition condition,
    String description,
    List<ToyImageUrls> imageUrlList,
    String name,
    int ownerConsumerID,
    int toyID,
  ) async {
    // Check if a toy with the given toyID already exists
    final toyList = await Toy.db.findById(
      session,
      toyID,
    );
    if (toyList != null) {
      throw Exception('toy-already-exists');
    }
    var toy = Toy(
      ownerConsumerID: ownerConsumerID,
      name: name,
      description: description,
      imageUrlList: imageUrlList,
      age: age,
      gender: gender,
      condition: condition,
      createdAt: DateTime.now(),
      isPublic: false,
      isLocked: false,
      likeCount: 0,
      likes: [],
      id: toyID,
    );

    Consumer? updatedConsumer;
    final isSuccess = await session.db.transaction((transaction) async {
      toy = await Toy.db.insertRow(session, toy, transaction: transaction);

      final ownerConsumer = await Consumer.db.findById(
        session,
        ownerConsumerID,
        transaction: transaction,
      );
      if (ownerConsumer == null) {
        return false;
      }
      ownerConsumer.toyCount = ownerConsumer.toyCount + 1;
      updatedConsumer = await Consumer.db.updateRow(
        session,
        ownerConsumer,
        transaction: transaction,
      );

      return true;
    });
    if (!isSuccess || updatedConsumer == null) {
      throw Exception('unknown-error');
    }
    return ToyAndOwnerConsumer(ownerConsumer: updatedConsumer!, toy: toy);
  }

  Future<List<ToyAndOwnerConsumer>> readLikeableToysWithOwnerConsumer(
    Session session,
    int currentConsumerID,
    int offset,
  ) async {
    final toyList = await Toy.db.find(
      session,
      where: (toys) =>
          toys.ownerConsumerID.notEquals(currentConsumerID) &
          toys.isPublic.equals(true) &
          toys.isLocked.equals(false) &
          toys.likes.none(
            (likers) => likers.consumerId.equals(currentConsumerID),
          ),
      limit: 12,
      orderBy: (table) => table.createdAt,
      orderDescending: true,
      offset: offset,
    );
    List<ToyAndOwnerConsumer> toyAndOwnerConsumerList = [];
    for (var toy in toyList) {
      final ownerConsumer = await Consumer.db.findById(
        session,
        toy.ownerConsumerID,
      );
      if (ownerConsumer == null) {
        throw Exception('no-owner-found');
      }
      toyAndOwnerConsumerList.add(ToyAndOwnerConsumer(
        ownerConsumer: ownerConsumer,
        toy: toy,
      ));
    }

    return toyAndOwnerConsumerList;
  }

  Future<void> openPublic(
    Session session,
    int toyID,
    String requestorAuthID,
  ) async {
    var toy = await Toy.db.findById(
      session,
      toyID,
    );
    var requestorConsumer = await Consumer.db.findFirstRow(
      session,
      where: (consumerTable) => consumerTable.authId.equals(requestorAuthID),
    );
    if (requestorConsumer == null) {
      throw Exception('no-consumer-found');
    }
    if (toy == null) {
      throw Exception('no-toy-found');
    }
    if (toy.isLocked) {
      throw Exception('toy-locked');
    }
    if (toy.ownerConsumerID != requestorConsumer.id) {
      throw Exception('not-toy-owner');
    }
    if (toy.isPublic) {
      return;
    }
    toy.isPublic = true;
    await Toy.db.updateRow(session, toy);
    return;
  }

  Future<void> closePublic(
    Session session,
    int toyID,
    String requestorAuthID,
  ) async {
    var toy = await Toy.db.findById(
      session,
      toyID,
    );
    var requestorConsumer = await Consumer.db.findFirstRow(
      session,
      where: (consumerTable) => consumerTable.authId.equals(requestorAuthID),
    );
    if (requestorConsumer == null) {
      throw Exception('no-consumer-found');
    }
    if (toy == null) {
      throw Exception('no-toy-found');
    }
    if (toy.isLocked) {
      throw Exception('toy-locked');
    }
    if (toy.ownerConsumerID != requestorConsumer.id) {
      throw Exception('not-toy-owner');
    }
    if (!toy.isPublic) {
      return;
    }
    toy.isPublic = false;
    await Toy.db.updateRow(session, toy);
    return;
  }

  Future<Toy> likeToy(
    Session session,
    int toyID,
    int likerConsumerID,
  ) async {
    var toy = await Toy.db.findById(
      session,
      toyID,
    );
    if (toy == null) {
      throw Exception('no-toy-found');
    }
    if (!toy.isPublic) {
      throw Exception('toy-not-public');
    }
    if (toy.isLocked) {
      throw Exception('toy-locked');
    }
    final alreadyLikedList = await Like.db.find(
      session,
      where: (likes) =>
          likes.toyId.equals(toyID) & likes.consumerId.equals(likerConsumerID),
    );

    if (alreadyLikedList.isNotEmpty) {
      throw Exception('already-liked');
    }
    if (toy.ownerConsumerID == likerConsumerID) {
      throw Exception('owner-liked');
    }
    final likerConsumer = await Consumer.db.findById(session, likerConsumerID);

    if (likerConsumer == null) {
      throw Exception('no-liker-found');
    }

    final updatedToy = await session.db.transaction((transaction) async {
      final like = Like(consumerId: likerConsumerID, toyId: toyID);
      await Like.db.insertRow(session, like, transaction: transaction);
      toy.likeCount = toy.likeCount + 1;
      return await Toy.db.updateRow(session, toy, transaction: transaction);
    });

    return updatedToy;
  }

  Future<Toy> unlikeToy(
    Session session,
    int toyID,
    int unlikerConsumerID,
  ) async {
    var like = await Like.db.findFirstRow(
      session,
      where: (likeTable) =>
          likeTable.consumerId.equals(unlikerConsumerID) &
          likeTable.toyId.equals(toyID),
    );
    if (like == null) {
      throw Exception('not-like-found');
    }
    var toy = await Toy.db.findById(session, toyID);
    if (toy == null) {
      throw Exception('no-toy-found');
    }

    final updatedToy = await session.db.transaction((transaction) async {
      await Like.db.deleteRow(session, like, transaction: transaction);
      toy.likeCount = toy.likeCount - 1;
      return await Toy.db.updateRow(session, toy, transaction: transaction);
    });

    return updatedToy;
  }

  Future<Consumer> deleteToy(
    Session session,
    int toyID,
    int currentConsumerID,
  ) async {
    final toy = await Toy.db.findById(session, toyID);
    if (toy == null) {
      throw Exception('no-toy-found');
    }
    if (toy.ownerConsumerID != currentConsumerID) {
      throw Exception('not-owner');
    }
    final updatedConsumer =
        await session.db.transaction((transaction) async {
      await Like.db.deleteWhere(
        session,
        where: (likes) => likes.toyId.equals(toyID),
        transaction: transaction,
      );
      var updatedConsumer = await Consumer.db.findById(
        session,
        currentConsumerID,
        transaction: transaction,
      );
      if (updatedConsumer == null) {
        throw Exception('no-consumer-found');
      }
      updatedConsumer.toyCount = updatedConsumer.toyCount - 1;
      updatedConsumer = await Consumer.db.updateRow(
        session,
        updatedConsumer,
        transaction: transaction,
      );

      await Toy.db.deleteRow(
        session,
        toy,
        transaction: transaction,
      );
      return updatedConsumer;
    });
    return updatedConsumer;
  }

  Future<List<ToyAndOwnerConsumer>> fetchMoreAcceptableToys(
    Session session,
    int offset,
  ) async {
    final toyList = await Toy.db.find(
      session,
      where: (toys) => toys.acceptDeciderSupportID.equals(null),
      limit: 12,
      orderBy: (table) => table.createdAt,
      // orderDescending: true,
      offset: offset,
    );
    List<ToyAndOwnerConsumer> toyAndOwnerConsumerList = [];
    for (var toy in toyList) {
      final ownerConsumer = await Consumer.db.findById(
        session,
        toy.ownerConsumerID,
      );
      if (ownerConsumer == null) {
        throw Exception('no-owner-found');
      }
      toyAndOwnerConsumerList.add(ToyAndOwnerConsumer(
        ownerConsumer: ownerConsumer,
        toy: toy,
      ));
    }

    return toyAndOwnerConsumerList;
  }

  Future<void> acceptToy(
    Session session,
    int acceptedToyID,
    String accepterAuthID,
  ) async {
    var accepterSupport = await Support.db.findFirstRow(
      session,
      where: (supportTable) => supportTable.authId.equals(accepterAuthID),
    );
    if (accepterSupport == null) {
      throw Exception('wrong-support-id');
    }
    var acceptableToy = await Toy.db.findById(session, acceptedToyID);
    if (acceptableToy == null) {
      throw Exception('no-toy-found');
    }
    if (acceptableToy.isLocked) {
      throw Exception('toy-locked');
    }
    if (acceptableToy.acceptDeciderSupportID != null) {
      throw Exception('already-decided');
    }

    await session.db.transaction((transaction) async {
      acceptableToy.isAccepted = true;
      acceptableToy.acceptDeciderSupportID = accepterSupport.id!;

      Toy.db.updateRow(session, acceptableToy, transaction: transaction);
    });
  }

  Future<void> declineToy(
    Session session,
    int acceptedToyID,
    String reason,
    String accepterAuthID,
  ) async {
    var deciderSupport = await Support.db.findFirstRow(
      session,
      where: (supportTable) => supportTable.authId.equals(accepterAuthID),
    );
    if (deciderSupport == null) {
      throw Exception('wrong-support-id');
    }
    var decliningToy = await Toy.db.findById(session, acceptedToyID);
    if (decliningToy == null) {
      throw Exception('no-toy-found');
    }
    if (decliningToy.isLocked) {
      throw Exception('toy-locked');
    }
    if (decliningToy.acceptDeciderSupportID != null) {
      throw Exception('already-decided');
    }

    await session.db.transaction((transaction) async {
      decliningToy.isAccepted = false;
      decliningToy.acceptDeciderSupportID = deciderSupport.id!;
      decliningToy.declineReason = reason;
      Toy.db.updateRow(session, decliningToy, transaction: transaction);
    });
  }
}
