import 'package:flutter/material.dart';
import 'package:weatherapp/services/weather.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'choose_location_page',
      home: ChooseLocation(),
    );
  }
}

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldWeather> location=[
    WorldWeather(location: 'Mumbai'),
    WorldWeather(location: 'London'),
    WorldWeather(location: 'Delhi'),
    WorldWeather(location: 'Paris'),
    WorldWeather(location: 'Tokyo'),
    WorldWeather(location: 'New York'),
    WorldWeather(location: 'Chicago'),
    WorldWeather(location: 'Shanghai'),
    WorldWeather(location: 'Cairo'),
    WorldWeather(location: 'Paris'),
    WorldWeather(location: 'Perth'),
    WorldWeather(location: 'Chennai'),

  ];

  void updateTime(index) async{
    WorldWeather instance=location[index];
    await instance.getWeather();

    Navigator.pop(context,{
      'location':instance.location,
      'temperature':instance.temperature,
      'cloudsM':instance.cloudsM,
      'cloudsD':instance.cloudsD,
      'humidity':instance.humidity,
      'windSpeed':instance.windSpeed,

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: location.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){
                    updateTime(index);
                  },
                  title: Text(location[index].location),
                ),
              ),
            );
          }
      ),
    );
  }
}
