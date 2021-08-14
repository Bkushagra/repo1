
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data={};
  Color? bgColor=Colors.white;
  @override
  Widget build(BuildContext context) {

    data=data.isNotEmpty ? data :ModalRoute.of(context)!.settings.arguments as Map;

    if(data['temperature']>35){
      bgColor=Colors.red[900];
    }
    else if(data['temperature']>20){
      bgColor=Colors.deepOrange;
    }
    else if(data['temperature']>5){
      bgColor=Colors.blue[500];
    }
    else{
      bgColor=Colors.blue[100];
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                  color: bgColor
                ),
                //hot red[900] medium deeporange cool blue 500 very cool blueaccent[100]
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0 , 10.0,0.0,70.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                            onPressed:() async{
                              dynamic result=await Navigator.pushNamed(context, '/location');
                              setState(() {
                                data={
                                  'location':result['location'],
                                  'temperature':result['temperature'],
                                  'cloudsM':result['cloudsM'],
                                  'cloudsD':result['cloudsD'],
                                  'humidity':result['humidity'],
                                  'windSpeed':result['windSpeed'],
                                };
                              });
                            },
                            icon: Icon(Icons.edit_location,
                            color: Colors.white),

                            label: Text('edit location',
                            style: TextStyle(
                              color: Colors.white
                            ),)
                        ),
                        Text('Currently in '+data['location'] ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),),
                        Text(
                          data['temperature'].toStringAsFixed(1)+'°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0
                          ),

                        ),
                        Text(data['cloudsM'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                        title: Text('Temperature(°C)'),
                        trailing: Text(data['temperature'].toStringAsFixed(1)),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.cloud),
                        title: Text('Weather'),
                        trailing: Text(data['cloudsD']),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.water),
                        title: Text('Humidity(%)'),
                        trailing: Text(data['humidity'].toString()),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.wind),
                        title: Text('Wind Speed(mph)'),
                        trailing: Text(data['windSpeed'].toString()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
