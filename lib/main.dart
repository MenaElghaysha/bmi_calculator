import 'package:bmi_calculator/Screens/screen2.dart';
import 'package:flutter/material.dart';

import 'Screens/screen1.dart';
import 'Screens/screen2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Screen1.Route,
      routes:
      {Screen1.Route : (context)=>Screen1(),
      Screen2.Route : (context)=>Screen2(),}



    );
  }

}