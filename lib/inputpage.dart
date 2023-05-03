import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const double bottomcontainerheight = 60;
const activecardcolor = Color(0xFF1D1E33);
const inactivecardcolor = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

PreferredSizeWidget appBar() {
  return AppBar(
    backgroundColor: Color(0xFF0A0E21),
    title: Center(
      child: Text(
        'BMI CALCULATOR',
        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
      ),
    ),
  );
}

Widget bottomContainer() {
  return Container(
    color: bottomContainerColour,
    margin: EdgeInsets.only(top: 10),
    width: double.infinity,
    height: bottomcontainerheight,
  );
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactivecardcolor;
  Color femaleCardColor = inactivecardcolor;

// male = 1 , female = 2
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactivecardcolor) {
        maleCardColor == activecardcolor;
      } else {
        maleCardColor = inactivecardcolor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactivecardcolor) {
        femaleCardColor == activecardcolor;
      } else {
        femaleCardColor = inactivecardcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: reusableCard(
                      colour: maleCardColor,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    colour: femaleCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              colour: activecardcolor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    colour: activecardcolor,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    colour: activecardcolor,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          bottomContainer()
        ],
      ),
    );
  }
}
