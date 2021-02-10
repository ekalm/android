import 'package:prakerin/constants.dart';
import 'package:prakerin/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor = kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ), // ThemeData
      home HomeScreen(),
    ); // Material App
  }
}

