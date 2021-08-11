//calculator_app
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main(){
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30.0,10.0,10.0,0.0),
            child: Text('$expression',
              style: TextStyle(
                  fontSize: 30.0,
                color: Colors.white
              ),),

          ),
          Container(),
          Container(),
          Container(
            padding: EdgeInsets.fromLTRB(30.0,10.0,10.0,0.0),
            child: Text('$result',
              style: TextStyle(
                  fontSize: 40.0,
                color: Colors.white
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Divider(
              height: 100.0,
              color: Colors.grey[100],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(onPressed: (){
                setState(() {
                  expression='';
                  result='0';
                });
              },
                padding: EdgeInsets.all(15.0),
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                highlightedBorderColor: Colors.red,
                highlightColor: Colors.red,
                child: Text('C',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.redAccent
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  if(expression[0]=='-'){
                    expression=expression.replaceAll('-', '');
                  }
                  else{
                    expression='-'+expression;
                  }
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.lightGreenAccent,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text(
                  '+/-',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightGreen
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '%';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.lightGreenAccent,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('%',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightGreen
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  if(expression=='Ans'){
                    expression='';
                    result='0';
                  }
                  else{
                    expression=expression.substring(0,expression.length-1);
                  }
                });
              },
                padding: EdgeInsets.all(15.0),

                shape: StadiumBorder(),
                highlightColor: Colors.red,
                highlightedBorderColor: Colors.red,
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('DEL',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.redAccent
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '7';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('7',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '8';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('8',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '9';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('9',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '÷';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.lightGreenAccent,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('÷',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightGreen
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '4';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('4',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '5';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('5',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '6';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('6',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '×';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.lightGreenAccent,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('×',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightGreen
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '1';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('1',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '2';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('2',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '3';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('3',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '-';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.lightGreenAccent,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('-',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightGreen
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '.';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('.',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression+ '0';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.grey[800],
                highlightedBorderColor: Colors.grey,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('0',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              FlatButton(onPressed: (){
                setState(() {
                  expression=expression.replaceAll('%', '/100');
                  expression = expression.replaceAll('×', '*');
                  expression = expression.replaceAll('÷', '/');
                  try{
                    Parser p = new Parser();
                    Expression exp=p.parse(expression);
                    ContextModel cm = ContextModel();
                    result = '${exp.evaluate(EvaluationType.REAL, cm)}';

                  }catch(e){
                    result='Error';
                  }
                  expression='Ans';
                }
                );
              },
                padding: EdgeInsets.all(15.0),
                color: Colors.lightGreen,
                shape: StadiumBorder(),

                child: Text('=',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                  ),
                ),
              ),
              OutlineButton(onPressed: (){
                setState(() {
                  expression=expression + '+';
                });
              },
                padding: EdgeInsets.all(15.0),
                highlightColor: Colors.lightGreenAccent,
                shape: StadiumBorder(),
                borderSide: BorderSide(color: Colors.grey,width: 1.0),
                child: Text('+',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightGreen
                  ),
                ),
              ),


            ],
          ),
        ],
      ),

    );
  }
}
