import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  //get location from device
  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (Exception) {
      // TimeoutException, PermissionDeniedException,LocationServiceDisabledException
      print(Exception);
    }
    /*
    Duration timedelay = Duration(seconds: 1);
    await Future.delayed(timedelay, () {
       do something
    }); */
  }
}
