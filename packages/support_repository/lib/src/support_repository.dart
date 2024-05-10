import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:toy_swapp/errors/errors.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../support_repository.dart';

class SupportRepository {
  SupportRepository({
    required Client client,
  }) : _client = client {
    currentSupportStream.listen((event) {
      currentSupport = event;
    });
  }
  final Client _client;

  // VARIABLES
  // Current Consumer
  final _currentSupportStreamController =
      StreamController<Support?>.broadcast();
  Stream<Support?> get currentSupportStream =>
      _currentSupportStreamController.stream;
  Support? currentSupport;

  FutureEither<Support?> initCurrentSupportWithAuthID({
    required String authId,
  }) async {
    try {
      final support = await _client.support.readWithAuthID(authId);
      _currentSupportStreamController.sink.add(support);
      return Right(support);
    } catch (exception) {
      return const Left(SupportRepositoryException.unknown());
    }
  }

  void sinkCurrentSupport(
    Support? support,
  ) {
    _currentSupportStreamController.sink.add(support);
  }
}
