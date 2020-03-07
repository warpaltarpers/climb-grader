import 'package:flutter/material.dart';
import 'results.dart';
import 'start_screen.dart';

void main() => runApp(ClimbGrader());

class ClimbGrader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Start(),
        '/results' : (context) => ResultsPage(),
      },
    );
  }
}
