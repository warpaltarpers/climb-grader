import 'package:climb_grader/screens/form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../components/climbing_enums.dart' as sys;
import '../components/functions.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  String system = 'Yosemite';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('images/bg_img.png'),
        //     fit: BoxFit.cover,
        //     colorFilter: ColorFilter.mode(
        //       Colors.white.withOpacity(0.45), 
        //       BlendMode.dstATop
        //     ),
        //   ),
        // ),
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
              DropdownButton(
                items: sys.systems,
                onChanged: (String newSystem) {
                  setState(() {
                    system = newSystem;
                  });
                },
                value: system,
                icon: Icon(
                  AntDesign.caretdown,
                  size: 10
                ),
              ),
              SizedBox(
                width: 20,
                height: 20
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