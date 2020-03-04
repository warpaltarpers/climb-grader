import 'package:flutter/material.dart';
import 'dart:math';

// TODO: Add shape implementation
// enum ButtonShape {
//   flat,
//   concave,
//   convex,
//   pressed
// }

String colorToString(Color c){
  String colorString = c.toString();
  String valueString = colorString.substring(10, colorString.length - 1);
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
  var rgb = "", i;
	for (i = 0; i < 3; i++) {
		String x = hex.substring(i*2, 2);
    var c = int.parse(x, radix: 16);
    double a = c + (c * lum);
    double y = min(max(0, a), 255);
    x = y.round().toRadixString(16);
		rgb += ("00"+x).substring(x.length);
	}
  
  return Color(int.parse(rgb.substring(0, 7), radix: 16) + 0xFF000000);
}

Color changeLuminosity(Color a, double lum){
  String x = colorToString(a);
  return colorLuminance(x, lum);
}

double negativeConvert(double num){
  return num - (num * 2);
}

class NeumorphicRoundButton extends StatefulWidget {
  
  // TODO: Add light direction
  NeumorphicRoundButton({
    @required this.mainColor, 
    this.size = 300.0, 
    this.distance = 20.0, 
    this.intensity = 0.15, 
    this.blur = 60.0, 
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
  // TODO: Change naming convention when light source added
  Color topLeftColor;
  Color bottomRightColor;
  
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
  
  @override
  void initState() { 
    super.initState();
    grad1 = changeLuminosity(widget.mainColor, 0.15);
    grad2 = changeLuminosity(widget.mainColor, -0.15);
    shadow1 = changeLuminosity(widget.mainColor, widget.intensity);
    shadow2 = changeLuminosity(widget.mainColor, negativeConvert(widget.intensity));
    bottomRightColor = grad2;
    topLeftColor = grad1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_){
        widget.onTap();
        setState(() {
          updateColor(true);
        });
      },
      onTapUp: (_){
        widget.onRelease();
        setState(() {
          updateColor(false);
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
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
              offset: new Offset(negativeConvert(widget.distance), negativeConvert(widget.distance)),
              blurRadius: widget.blur
            ),
            new BoxShadow(
              color: shadow2,
              offset: new Offset(widget.distance, widget.distance),
              blurRadius: widget.blur
            )
          ]
        ),
        child: widget.icon,
      ),
    );
  }
}