import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'components/neumorphic_round_button.dart';

// Color grad1 = Color(0xFFffffff);
// Color grad2 = Color(0xFFe6e6e6);
Color mainColor = Color(0xFFffffff);
// Color shadow1 = Color(0xFFffffff);
// Color shadow2 = Color(0xFFC4c4c4);

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: mainColor,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'ROUTE SUGGESTION',
              style: GoogleFonts.titilliumWeb(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 38.0
              ),
            ),
          ),
          Center(
            child: Text(
              '5.9',
              style: GoogleFonts.titilliumWeb(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 160.0,
                color: Colors.greenAccent
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 20.0
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NeumorphicRoundButton(mainColor: mainColor, onTap: null, onRelease: null, icon: Icon(AntDesign.arrowleft)),
              SizedBox(
                width: 50.0,
                height: 50.0
              ),
              NeumorphicRoundButton(mainColor: mainColor, onTap: null, onRelease: null, icon: Icon(AntDesign.retweet)),
            ],
          ),
        ],
      ),
    );
  }
}