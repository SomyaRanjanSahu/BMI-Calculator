import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_box.dart';
import 'data_container.dart';

const activeColor = Colors.pink;
const inActiveColor = Color(0xFFffffff);

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color maleBoxColor = activeColor;
  Color femaleBoxColor = inActiveColor;

  void updateBoxColor(int gender) {
    if (gender == 1) {
      if (maleBoxColor == inActiveColor) {
        maleBoxColor = activeColor;
        femaleBoxColor = inActiveColor;
      } else {
        maleBoxColor = inActiveColor;
        femaleBoxColor = activeColor;
      }
    } else {
      if (femaleBoxColor == inActiveColor) {
        femaleBoxColor = activeColor;
        maleBoxColor = inActiveColor;
      } else {
        femaleBoxColor = inActiveColor;
        maleBoxColor = activeColor;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateBoxColor(1);
                    });
                  },
                  child: ContainerBox(
                    boxColor: maleBoxColor,
                    childWidget: DataContainer(
                        icon: FontAwesomeIcons.mars, title: "MALE"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateBoxColor(2);
                    });
                  },
                  child: ContainerBox(
                      boxColor: femaleBoxColor,
                      childWidget: DataContainer(
                          icon: FontAwesomeIcons.venus, title: "FEMALE")),
                ),
              ),
            ],
          )),
          Expanded(
            child: ContainerBox(
              boxColor: const Color(0xFFffffff),
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("HEIGHT", style: textStyle1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const <Widget>[
                      Text("180", style: textStyle2),
                      Text("cm", style: textStyle1),
                    ],
                  )
                ],
              ),
            ),
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
          Container(
            width: double.infinity,
            height: 80.0,
            color: activeColor,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
