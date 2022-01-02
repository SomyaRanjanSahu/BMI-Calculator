import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ContainerBox(boxColor: const Color(0xFFffffff)),
              ),
              Expanded(
                child: ContainerBox(boxColor: const Color(0xFFffffff)),
              ),
            ],
          )),
          Expanded(
            child: ContainerBox(boxColor: const Color(0xFFffffff)),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ContainerBox(boxColor: const Color(0xFFffffff)),
              ),
              Expanded(
                child: ContainerBox(boxColor: const Color(0xFFffffff)),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ContainerBox extends StatelessWidget {
  ContainerBox({required this.boxColor});
  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: boxColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5.0,
              blurRadius: 7.0,
              offset: const Offset(0, 3),
            )
          ]),
    );
  }
}
