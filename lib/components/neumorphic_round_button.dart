import 'package:flutter/material.dart';
import 'dart:math';

import '../main.dart';

// TODO: Add shape implementation
// enum ButtonShape {
//   flat,
//   concave,
//   convex,
//   pressed
// }

String colorToString(Color c){
  String colorString = c.toString();
  String valueString = colorString.split('(0x')[1].split(')')[0];
  return valueString;
}

/*
  Generate lighter or darker color based on luminance
  
  Transcribed to Dart from a JS article by Craig Buckler
  https://bit.ly/2PKV1nE
*/
Color colorLuminance(String hex, double lum){
  // Verifying & extending hex length
  if (hex.length < 6) {
    hex = hex[0]+hex[0]+hex[1]+hex[1]+hex[2]+hex[2];
  }
  
  // Convert to decimal and change luminosity
  var rgb = "", c, i, x, y;
	for (i = 0; i < 3; i++) {
		x = hex.substring(i*2, 2);
    c = int.parse(x.toRadixString(16));
    int a = c + (c * lum);
    y = min(max(0, a), 255);
    x = y.round().toRadixString(16);
		rgb += ("00"+c).substring(c.length);
	}
  
  return Color(int.parse(rgb.substring(0, 7), radix: 16) + 0xFF000000);
}

Color changeLuminosity(Color a, double lum){
  String x = colorToString(a);
  return colorLuminance(x, lum);
}

class NeumorphicRoundButton extends StatefulWidget {
  
  // TODO: Add light direction
  NeumorphicRoundButton({
    @required this.mainColor, 
    this.size = 300, 
    this.distance = 20, 
    this.intensity = 0.15, 
    this.blur = 60, 
    @required this.onTap, 
    @required this.onRelease, 
    @required this.icon
  });
  
  final Color mainColor;
  final Icon icon;
  final double size;
  final double distance;
  final double intensity;
  final double blur;
  final Function onTap;
  final Function onRelease;

  @override
  _NeumorphicRoundButtonState createState() => _NeumorphicRoundButtonState();
}

class _NeumorphicRoundButtonState extends State<NeumorphicRoundButton> {

  Color grad1;
  Color grad2;
  Color shadow1;
  Color shadow2;
  Color topLeftColor;
  Color bottomRightColor;
  
  @override
  void initState() { 
    grad1 = changeLuminosity(widget.mainColor, 0.15);
    grad2 = changeLuminosity(widget.mainColor, -0.15);
    shadow1 = changeLuminosity(widget.mainColor, widget.intensity);
    shadow2 = changeLuminosity(widget.mainColor, (widget.intensity - (widget.intensity*2)));
    bottomRightColor = grad2;
    topLeftColor = grad1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              blurRadius: widget.blur
            ),
            new BoxShadow(
              color: shadow2,
              offset: new Offset(30, 30),
              blurRadius: widget.blur
            )
          ]
        ),
        child: widget.icon,
      ),
    );
  }
}