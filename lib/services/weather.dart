
import 'package:weather/weather.dart';

class WorldWeather{

  late String location;
  late double? temperature;
  late String? cloudsM;
  late String? cloudsD;
  late double? humidity;
  late double? windSpeed;
  WeatherFactory wf = new WeatherFactory("440834491fc722dcc3fae416b715453c");

  WorldWeather({required this.location});

  Future<void> getWeather() async{
    Weather w = await wf.currentWeatherByCityName(location);
    //print(w);
    temperature  = w.temperature!.celsius;
    cloudsM=w.weatherMain;
    cloudsD=w.weatherDescription;
    humidity=w.humidity;
    windSpeed=w.windSpeed;


  }
}



