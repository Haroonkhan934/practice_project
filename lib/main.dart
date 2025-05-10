import 'package:flutter/material.dart';
import 'package:practice_project/home_screen.dart';
import 'package:practice_project/statefull_widget_screen.dart';
import 'package:practice_project/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue), // ThemeData
      home:const WhyProviderScreen(),
    );
  }
}
