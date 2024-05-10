import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class SupportEndpoint extends Endpoint {
  Future<Support?> readWithAuthID(Session session, String authID) async {
    final supportData = await Support.db.findFirstRow(
      session,
      where: (toyTable) {
        return toyTable.authId.equals(authID);
      },
    );

    return supportData;
  }
  
}
