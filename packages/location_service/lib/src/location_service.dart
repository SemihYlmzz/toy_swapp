import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_service/location_service.dart';
import 'package:toy_swapp/errors/errors.dart';

class LocationService {
  const LocationService();

  FutureEither<Location> getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition();
      return Right(
        Location(
          latitude: position.latitude,
          longitude: position.longitude,
        ),
      );
    } catch (exception) {
      return const Left(LocationServiceException.unknown());
    }
  }
}
