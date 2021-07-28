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
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30.0,10.0,10.0,0.0),
            child: Text('$expression',
              style: TextStyle(
                  fontSize: 30.0
              ),),

          ),
          Container(
            padding: EdgeInsets.fromLTRB(30.0,10.0,10.0,0.0),
            child: Text('$result',
              style: TextStyle(
                  fontSize: 40.0
              ),),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression='';
                    result='0';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('C',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    if(expression[0]=='-'){
                      expression=expression.replaceAll('-', '');
                    }
                    else{
                      expression='-'+expression;
                    }
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text(
                    '+/-',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '%';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('%',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
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
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('DEL',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '7';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('7',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '8';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('8',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '9';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('9',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '÷';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('÷',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '4';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('4',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '5';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('5',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '6';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('6',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '×';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('×',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '1';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('1',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '2';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('2',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '3';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('3',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '-';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('-',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '0';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('0',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression+ '.';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('.',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {

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
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('=',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    expression=expression + '+';
                  });
                },
                  padding: EdgeInsets.all(20.0),
                  color: Colors.grey[200],
                  child: Text('+',
                    style: TextStyle(
                        fontSize: 30.0
                    ),
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