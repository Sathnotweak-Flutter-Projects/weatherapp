import 'package:geolocator/geolocator.dart';

class Location {
  Location({this.latitude, this.longitude});
  double? latitude;
  double? longitude;

  Future<void> currentLocation() async {
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
