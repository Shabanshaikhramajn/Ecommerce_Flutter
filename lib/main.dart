import 'package:ecommerce/Screens/NavigationScreen.dart';
import 'package:ecommerce/Screens/onboarding_screen.dart';
import 'package:ecommerce/Screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: "Ecommerce Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),


    home: SplashScreen(),

    );
  }
}