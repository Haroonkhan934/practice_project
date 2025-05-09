import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int x = 10;
  // final variable o hota kha jes ko hum change nahe kar sakhta
  /*stateless ka ander hum variable ke value ko change nahe kar sakhta mean jab o ak dapa build ho jaya tu per hum ise ka sate
  interect nahei kar sakhta */
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("PROVIDER TUTORIALS")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: Center(
              child: Text(x.toString(), style: TextStyle(fontSize: 50)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
