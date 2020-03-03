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

class NeumorphicRoundButton extends StatelessWidget {
  
  // TODO: Add light direction
  NeumorphicRoundButton({@required this.mainColor, @required this.size, 
                         this.distance, this.intensity, this.blur, @required this.onPressed});
  
  final Color mainColor;
  final double size;
  final double distance;
  final double intensity;
  final double blur;
  final Function onPressed;
  
  @override
  void initState() { 
    Color grad1 = changeLuminosity(mainColor, 0.15);
    Color grad2 = changeLuminosity(mainColor, -0.15);
    Color shadow1 = changeLuminosity(mainColor, intensity);
    Color shadow2 = changeLuminosity(mainColor, (intensity - intensity - intensity));
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}