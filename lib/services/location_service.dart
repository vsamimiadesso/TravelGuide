import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<Position> currentPosition() async {
    return Geolocator.getCurrentPosition();
  }
}
