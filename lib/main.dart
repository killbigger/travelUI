import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String output="0";
String _output='0';
double num1;
double num2;
String operand;



  calculate(String value) {
   if(value =='/' || value =='+' ||value =='*' || value =='-' ) {
     num1=double.parse(output);
     operand=value;
     _output="";
     
   } else if(value=='clear') {
     num1=0;
     num2=0;
     output="";
     _output="";
     operand="";
    } else if(value=='.') {
      if(!_output.contains(".")){
        
        _output=_output+value ;
      }
    }
    else if(value=="="){
        num2=double.parse(_output);
        operand=="+" ? _output=(num1+num2).toString() :operand=="-" ? _output=(num1-num2).toString() :operand=="/" ? _output=(num1/num2).toString() :operand=="*" ? _output=(num1*num2).toString() : print("error");
    }else {
      _output=_output+value ;
    }
    setState(() {
      output=_output;
    });
 }
 Widget buildbutton(String buttontext) {
   return new Expanded(
        child: new OutlineButton(
                   padding:new EdgeInsets.all(24.4) ,
                    child: new Text(buttontext),
                    onPressed:()=> calculate(buttontext),
                    
                  ),
     );
   }
  @override
  Widget build(BuildContext context) {
    
  return new Scaffold(
    appBar: new AppBar(
      title: new Text(widget.title),
    ),
    body: new Container(
      child: new Column(
        children: <Widget>[
          new Expanded(child:new Divider()),
          new Text(output,textScaleFactor: 4,textAlign:TextAlign.right),
        new Expanded(
          child:new Divider(),
        ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                   buildbutton("0"),
                   buildbutton("/"),
                  buildbutton("*"),
                  buildbutton(".")

                  
                ],
              ),
              Row(
                children: <Widget>[
                   buildbutton("7"),
                   buildbutton("8"),
                  buildbutton("9"),
                  buildbutton("-")
                  ],
              ),
             
              Row(
                children: <Widget>[
                   buildbutton("4"),
                   buildbutton("5"),
                  buildbutton("6"),
                  buildbutton("+")
                  ],
              ),
               Row(
                children: <Widget>[
                   buildbutton("1"),
                   buildbutton("2"),
                  buildbutton("3"),
                  buildbutton("="),
                  buildbutton("clear")
                  ],
              )
              
            ],
          )
        ],
      ),
    ),
  ); 
  }
}