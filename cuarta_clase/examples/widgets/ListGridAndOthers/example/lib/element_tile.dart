import 'package:flutter/material.dart';

class ElementTile extends StatelessWidget {
  int currentNumber;
  ElementTile({Key? key, required this.currentNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.primaries[currentNumber % Colors.primaries.length],
      child: FittedBox(child: Text(currentNumber.toString()),),
    );
  }
}