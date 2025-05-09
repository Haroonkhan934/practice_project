import 'package:flutter/material.dart';

class StatefullWidget extends StatefulWidget {
  const StatefullWidget({super.key});

  @override
  State<StatefullWidget> createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("MHKHAN"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
              child: Text(count.toString(), style: TextStyle(fontSize: 50)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count++);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
