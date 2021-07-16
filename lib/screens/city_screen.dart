import 'package:flutter/material.dart';
import 'package:clime/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  var cityname = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value) {
                    cityname = value;
                  },
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  //add inputDecoration to constant file
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      hintText: 'enter city name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, cityname);
                },
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

when we go to backward, we can pass data(map,String,object) in Navigator.pop(context,data)
when go forward, we can pass data as,
  Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CityScreen( here we can pass data to city screen);
  }));

  passed data can be accessed using in state(_CityScreenState) using widget.data

  var dataFromCity = Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CityScreen( here we can pass data to city screen);
  }));

  this can Future output when cityscreen pop and passed data, it can store to variale(dataFromCity).




 */
