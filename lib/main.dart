import 'package:flutter/material.dart';
import 'results.dart';

void main() => runApp(ClimbGrader());

class ClimbGrader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ResultsPage(),
        // '/results' : (context) => ResultsPage(),
      },
    );
  }
}
