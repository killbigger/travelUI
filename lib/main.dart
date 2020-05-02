import 'package:flutter/material.dart';
import 'package:myapp/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Tarvel App',
     theme: ThemeData(
       accentColor: Color(0xFFD8ECF1),
       primaryColor: Color(0xFF3EBACE),
       scaffoldBackgroundColor: Color(0xFFF3F5F7)
     ),
      debugShowCheckedModeBanner: false,
      
      home: HomeScreen(),
    );
  }
}

