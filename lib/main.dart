import 'package:first_flutter_flight/drink_manager.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test Flight"),
        ),
        body: DrinkManager(),
      ),
    );
  }
}
