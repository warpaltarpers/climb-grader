import 'package:flutter/material.dart';
import 'results.dart';
import 'start_screen.dart';
import 'form.dart';

void main() => runApp(ClimbGrader());

class ClimbGrader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Start(),
        '/form' : (context) => FormPage(),
        '/results' : (context) => ResultsPage(),
      },
    );
  }
}
