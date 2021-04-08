import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/pictures/xmen.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0)
      ],
    );
  }
}