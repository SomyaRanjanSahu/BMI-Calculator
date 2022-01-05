import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {

  final textStyle1 = const TextStyle(
            color: Color(0xFF000000),
            fontSize: 20.0,
          );

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
        Text(
          title,
          style: textStyle1
        ),
      ],
    );
  }
}