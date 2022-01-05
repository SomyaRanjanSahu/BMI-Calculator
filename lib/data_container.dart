import 'package:flutter/material.dart';

const textStyle1 = TextStyle(
  color: Color(0xFF000000),
  fontSize: 18.0,
);

const textStyle2 = TextStyle(
  color: Color(0xFF000000),
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
);

class DataContainer extends StatelessWidget {
  DataContainer({required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(title, style: textStyle1),
      ],
    );
  }
}
