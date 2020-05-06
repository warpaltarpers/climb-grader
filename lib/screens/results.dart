import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../components/reusable_card.dart';
import '../components/constants.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
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
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ROUTE SUGGESTIONS',
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 38.0,
                      color: Color(0xFFFFFFFF)
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                    height: 20.0
                  ),
                  ReusableCard(
                    cardColor: Color(0x50FFFFFF),
                    cardChild: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Because the maximum angle is 135°, the grade should be no lower than 5.9',
                        style: kResultsStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                    height: 20.0
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    }, 
                    icon: Icon(AntDesign.back, color: Colors.white,)
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}