import 'package:climb_grader/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/systems.dart';
import '../components/constants.dart';
import '../components/round_icon_button.dart';
import 'dart:io' show Platform;

class FormPage extends StatefulWidget {
  FormPage({this.gradeSystem});
  
  final GradingSystem gradeSystem;
  
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int maxAngle = 180;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                ReusableCard(
                  cardColor: kActiveCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          'MAX ANGLE',
                          style: kLabelTextStyle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          RoundIconButton(
                            icon: Icons.remove,
                            onPressed: (){
                              setState(() {
                                maxAngle--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            maxAngle.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            '°',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          RoundIconButton(
                            icon: Icons.add,
                            onPressed: (){
                              setState(() {
                                maxAngle++;
                              });
                            },
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.white,
                          overlayColor: Color(0x29FFFFFF),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xff33c5ff),
                        ),
                        child: Slider(
                          value: maxAngle.toDouble(),
                          min: 90.0,
                          max: 270.0,
                          onChanged: (double newValue) {
                            setState(() {
                              maxAngle = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}