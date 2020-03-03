import 'package:flutter/material.dart';
import 'dart:math';

// TODO: Add shape implementation
// enum ButtonShape {
//   flat,
//   concave,
//   convex,
//   pressed
// }

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
  
  Color grad1 = Color(0xFFffffff);
  Color grad2 = Color(0xFFe6e6e6);
  Color shadow1 = Color(0xFFffffff);
  Color shadow2 = Color(0xFFC4c4c4);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}