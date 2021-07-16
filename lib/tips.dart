/*
Future<Position> position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
this is like a reciept we get in KFC when order is placed
we get Future<Position> instance instead of actual data.
we can use this many places when we need to retrieve data via long time process and no need that data
immediately.


//this will hold whole process in a second
Duration timedelay = Duration(seconds: 1);
sleep(timedelay);
::do something::

OR

// this will execute after 1 seconds. other processes can execute while this waiting.
// very good for download files from otherwhere and results not need immediately.
Duration timedelay = Duration(seconds: 1);
Future.delayed( timedelay , (){
  ::do something::
}

Simulating async getLocation
Future getLocation() async {
    // Position position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.low);
    String ay;
    String ax;
    Duration timedelay = Duration(seconds: 1);
    await Future.delayed(timedelay, () {
      ay = '1.1333';
      ax = '0.45446';
    });
    return ax,ay
}

void test() async {
 String location = await getLocation();
 ::do something::

}
 */

/*
String value;
String needed = value ?? 20;   //if value is null, then assign 20
 */
