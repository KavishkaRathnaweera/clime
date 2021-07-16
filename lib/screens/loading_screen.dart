import 'package:clime/services/location.dart';
import 'package:clime/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clime/services/networking.dart';
import 'package:clime/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  //get location when this widget creating time. when screen loading.
  //initState called when initiate widget
  @override
  void initState() {
    super.initState();
    getDeviceLocationData();
  }

  void getDeviceLocationData() async {
    Location loc = Location();
    await loc.getLocation();

    NetworkHelper networkhelp = NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?lat=${loc.latitude}&lon=${loc.longitude}&appid=$kApiKey&units=metric');

    var whetherData = await networkhelp.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationwhether: whetherData,
      );
    }));
  }

  //when deleting widget, this wiil called. when navigate.pull(context).
  //what should do when go from this widget, need to place in this method.
  @override
  void deactivate() {
    super.deactivate();
  }

  //build method called when building widget.rendering process of all widgets in class.
  //when setState() called, build method will run. this run after initState method.
  //when we want to do run time change to widget, add those in build method.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.red,
          size: 100.0,
        ),
      ),
    );
  }
}

/*
void function(){
  if(a==null){
    //do something
    return;  --------------> this will stop executing function and prevent function execute otherthings.
  }
  //do otherting;
}
 */
