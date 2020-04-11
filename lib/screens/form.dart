import 'package:flutter/material.dart';
import '../components/systems.dart';
import 'dart:io' show Platform;

class FormPage extends StatefulWidget {
  FormPage({this.gradeSystem});
  
  final GradingSystem gradeSystem;
  
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int maxAngle = 90;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
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
                    inactiveTrackColor: Color(0xFFb9e682),
                  ),
                  child: Slider(
                    value: maxAngle.toDouble(),
                    min: -45.0,
                    max: 180.0,
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
        ),
      ),
    );
  }
}