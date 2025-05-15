//import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

/* 🤟Ye ek internal Dart SDK library hai jo Flutter apps mein use nahi ki
ja sakti, especially jab aap mobile (Android/iOS) apps bana rahe ho. Ye sirf Dart VM ke kuch
 specific internal use cases ke liye hoti hai, aur public use ke liye available nahi hoti.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/example_one_provider.dart';


class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  @override
  Widget build(BuildContext context) {

    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('MHKHAN')),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder:( context,value,child) {
            return Slider(
                min:0,
                max: 1,
                value: value.value, onChanged: (val){
              value.setValue(val);

            });
          }),
          Consumer<ExampleOneProvider>(builder:( context,value,child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)
                    ),
                    child:const Center(
                      child: Text('container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value)
                    ),
                    child:const Center(
                      child: Text('container 2'),
                    ),
                  ),
                ),

              ],
            );
          }),

        ],
      ),
    );
  }
}
