import 'package:climb_grader/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/climbing_enums.dart' as sys;
import '../components/constants.dart';
import '../components/round_icon_button.dart';
import 'package:carousel_select_widget/carousel_select_widget.dart';

class FormPage extends StatefulWidget {
  FormPage({this.gradeSystem});
  
  final sys.GradingSystem gradeSystem;
  
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int maxAngle = 180;
  String mainHoldComp = 'Jug';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: kColorGradient
          )
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ReusableCard(
                  cardColor: kActiveCardColor,
                  cardChild: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
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
                          Padding(
                            padding: EdgeInsets.only(left: 2.0)
                          ),
                          Text(
                            '°',
                            style: kDegreeSymbol,
                          ),
                          SizedBox(
                            width: 14.0,
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
                          inactiveTrackColor: Color(0x50ffffff),
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
                ReusableCard(
                  cardColor: kActiveCardColor,
                  cardChild: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Text('MAIN HOLD COMP', style: kLabelTextStyle),
                          SizedBox(height: 10.0),
                          CarouselSelect(
                            valueList: sys.holds,
                            onChanged: (String newHolds) {
                              setState(() {
                                mainHoldComp = newHolds;
                              });
                            },
                            initialPosition: 0,
                            scrollDirection: ScrollDirection.horizontal,
                            activeItemFontSize: 25.0,
                            activeItemTextColor: Color(0xFFFFFFFF),
                            passiveItemFontSize: 20.0,
                            passiveItemsTextColor: Color(0xFFFFFFFF).withOpacity(0.7),
                            backgroundColor: Color(0xFFFFFFFF).withOpacity(0.0),
                            height: 50.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/results');
                  },
                  cardChild: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('GENERATE', style: kLabelTextStyle),
                    ),
                  ),
                  cardColor: Color(0xFFFFFFFF).withOpacity(0.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}