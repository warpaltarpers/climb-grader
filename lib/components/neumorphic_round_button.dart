import 'package:flutter/material.dart';

enum ButtonShape {
  flat,
  concave,
  convex,
  pressed
}

class NeumorphicRoundButton extends StatelessWidget {
  
  NeumorphicRoundButton({@required this.shape, @required this.color, @required this.size, 
                         this.distance, this.intensity, this.blur, @required this.onPressed});
  
  final ButtonShape shape;
  final Color color;
  final double size;
  final double distance;
  final double intensity;
  final double blur;
  final Function onPressed;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}