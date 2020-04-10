import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg_img.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.55), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'CLIMB GRADER',
                style: GoogleFonts.titilliumWeb(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  fontSize: 38.0
                ),
              ),
              SizedBox(
                width: 20,
                height: 20
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/results');
                },
                icon: Icon(
                  AntDesign.playcircleo,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}