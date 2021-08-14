import 'package:flutter/material.dart';
import 'package:weatherapp/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWeather() async{
    WorldWeather instance=WorldWeather(location: 'Chennai');
    await instance.getWeather();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location':instance.location,
      'temperature':instance.temperature,
      'cloudsM':instance.cloudsM,
      'cloudsD':instance.cloudsD,
      'humidity':instance.humidity,
      'windSpeed':instance.windSpeed,
    });
  }

  void initState() {
    super.initState();
    setupWeather();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}
