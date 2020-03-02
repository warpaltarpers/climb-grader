import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

Color mainColor = Color(0xFFffffff);
Color grad1 = Color(0xFFffffff);
Color grad2 = Color(0xFFe6e6e6);
Color shadow1 = Color(0xFFffffff);
Color shadow2 = Color(0xFFC4c4c4);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClimbPage(),
    );
  }
}

class ClimbPage extends StatefulWidget {
  @override
  _ClimbPageState createState() => _ClimbPageState();
}

class _ClimbPageState extends State<ClimbPage> {
    Color bottomRightColor = grad2;
    Color topLeftColor = grad1;

    void updateColor(bool pressed) {
    if (pressed) {
      if (topLeftColor == grad1) {
        topLeftColor = grad2;
        bottomRightColor = grad1;
      }
    } else if (!pressed) {
      if (topLeftColor == grad2) {
        topLeftColor = grad1;
        bottomRightColor = grad2;
      }
    } else {
      topLeftColor = grad1;
      bottomRightColor = grad2;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'ROUTE SUGGESTION',
              style: GoogleFonts.titilliumWeb(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 38
              ),
            ),
          ),
          Center(
            child: Text(
              '5.9',
              style: GoogleFonts.titilliumWeb(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 160,
                color: Colors.greenAccent
              ),
            ),
          ),
          SizedBox(
            width: 20,
            height: 20
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTapDown: (_){
                  setState(() {
                    updateColor(true);
                  });
                },
                onTapUp: (_){
                  setState(() {
                    updateColor(false);
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [topLeftColor, bottomRightColor]
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: shadow1,
                        offset: new Offset(-30, -30),
                        blurRadius: 60
                      ),
                      new BoxShadow(
                        color: shadow2,
                        offset: new Offset(30, 30),
                        blurRadius: 60
                      )
                    ]
                  ),
                  child: Icon(AntDesign.arrowleft),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50
              ),
              // TODO: Make GestureDetectors their own Widget
              GestureDetector(
                onTapDown: (_){
                  setState(() {
                    updateColor(true);
                  });
                },
                onTapUp: (_){
                  setState(() {
                    updateColor(false);
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [topLeftColor, bottomRightColor]
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: shadow1,
                        offset: new Offset(-30, -30),
                        blurRadius: 60
                      ),
                      new BoxShadow(
                        color: shadow2,
                        offset: new Offset(30, 30),
                        blurRadius: 60
                      )
                    ]
                  ),
                  child: Icon(AntDesign.retweet),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
