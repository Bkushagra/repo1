//weather_app
import 'package:flutter/material.dart';
import 'package:weatherapp/pages/choose_location.dart';
import 'package:weatherapp/pages/home.dart';
import 'package:weatherapp/pages/loading.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'/',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
      '/location':(context) => ChooseLocation()
    },
  ));
}
