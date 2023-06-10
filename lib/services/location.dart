import 'package:geolocator/geolocator.dart';

class Location {
  late double longtuid;
  late double latitude;
  Future<void> getCurentlocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      this.latitude = position.latitude;
      this.longtuid = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
