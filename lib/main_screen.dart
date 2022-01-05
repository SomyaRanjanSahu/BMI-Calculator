import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_box.dart';
import 'data_container.dart';

const activeColor = Colors.pink;
const inActieColor = Color(0xFFffffff);

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
                child: ContainerBox(
                  boxColor: const Color(0xFFffffff),
                  childWidget:
                      DataContainer(icon: FontAwesomeIcons.mars, title: "MALE"),
                ),
              ),
              Expanded(
                child: ContainerBox(
                    boxColor: const Color(0xFFffffff),
                    childWidget: DataContainer(
                        icon: FontAwesomeIcons.venus, title: "FEMALE")),
              ),
            ],
          )),
          Expanded(
            child: ContainerBox(
                boxColor: const Color(0xFFffffff),
                childWidget:
                    DataContainer(icon: FontAwesomeIcons.ban, title: "None")),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ContainerBox(
                    boxColor: const Color(0xFFffffff),
                    childWidget: DataContainer(
                        icon: FontAwesomeIcons.ban, title: "None")),
              ),
              Expanded(
                child: ContainerBox(
                    boxColor: const Color(0xFFffffff),
                    childWidget: DataContainer(
                        icon: FontAwesomeIcons.ban, title: "None")),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
