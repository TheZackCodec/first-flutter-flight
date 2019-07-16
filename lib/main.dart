import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _drinks = ['Booze Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test Flight"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _drinks.add('Advanced Booze Tester');
                  });
                },
                child: Text('Add Card'),
              ),
            ),
            Column(
              children: _drinks
                  .map(
                    (element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/booze.jpeg'),
                          Text(element)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
