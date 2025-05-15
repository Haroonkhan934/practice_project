import 'package:flutter/material.dart';
import 'package:practice_project/home_screen.dart';
import 'package:practice_project/provider/count_provider.dart';
import 'package:practice_project/provider/example_one_provider.dart';
import 'package:practice_project/screen/count_example.dart';
import 'package:practice_project/screen/example_one.dart';
import 'package:practice_project/statefull_widget_screen.dart';
import 'package:practice_project/why_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ],
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue), // ThemeData
        home: const ExampleOneScreen(),
      ) ,
    );

  }
}
