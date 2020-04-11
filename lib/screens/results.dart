import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

Color mainColor = Color(0xFFffffff);

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'ROUTE SUGGESTIONS',
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
          Row(
            children: <Widget>[
              new Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, 
                  icon: Icon(AntDesign.back)
                )
              ),
              new Expanded(
                child: IconButton(
                  onPressed: null, 
                  icon: Icon(AntDesign.retweet)
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}