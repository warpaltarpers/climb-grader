import 'package:flutter/material.dart';

// TODO: Add shape implementation
// enum ButtonShape {
//   flat,
//   concave,
//   convex,
//   pressed
// }

colorLuminance(Color c){
  
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