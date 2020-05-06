import 'package:climb_grader/components/constants.dart';
import 'package:climb_grader/screens/form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../components/climbing_enums.dart' as sys;
import '../components/functions.dart';
import 'package:carousel_select_widget/carousel_select_widget.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  String system = 'YOS';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  'CLIMB GRADER',
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 38.0,
                    color: Color(0xFFFFFFFF)
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 40
                ),
                CarouselSelect(
                  valueList: sys.systems,
                  onChanged: (String newSystem) {
                    setState(() {
                      system = newSystem;
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
                SizedBox(
                  width: 20,
                  height: 30
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => FormPage(
                        gradeSystem: parseSystem(system),
                      )
                    ));
                  },
                  icon: Icon(
                    Entypo.controller_play,
                    color: Color(0xFFFFFFFF),
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}