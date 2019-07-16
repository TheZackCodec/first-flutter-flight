import 'package:flutter/material.dart';

class Drinks extends StatelessWidget {
  final List<String> drinks;

  Drinks(this.drinks); //assign input to variable of the same name above ^

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drinks
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
    );
  }
}
