import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
        alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 2.0,
                  )
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/pictures/avengers.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/pictures/logoPeli.png',
              width: 100.0,
            ),
          ],
        ),
        SizedBox(width: 9.0,)
      ],
    );
  }
}