import 'package:clime/services/location.dart';
import 'package:clime/services/networking.dart';
import 'package:clime/utilities/constants.dart';

class WeatherModel {
  Future<dynamic> getDeviceLocationData() async {
    //function for getweather data from location
    Location loc = Location();
    await loc.getLocation();

    NetworkHelper networkhelp = NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?lat=${loc.latitude}&lon=${loc.longitude}&appid=$kApiKey&units=metric');

    var whetherData = await networkhelp.getData();
    return whetherData;
  }

  Future<dynamic> getcityData(String city) async {
    NetworkHelper networkhelp =
        NetworkHelper('url for get weather data using city');

    var whetherData = await networkhelp.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
