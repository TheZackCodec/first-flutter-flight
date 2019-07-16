import 'package:flutter/material.dart';

import './drinks.dart';

class DrinkManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DrinkManagerState();
  }
}

class _DrinkManagerState extends State<DrinkManager> {
  List<String> _drinks = ['Booze Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Drinks(_drinks)
      ],
    );
  }
}
