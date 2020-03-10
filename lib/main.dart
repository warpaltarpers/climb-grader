import 'package:climb_grader/routing_constants.dart';
import 'package:flutter/material.dart';
import 'results.dart';
import 'start_screen.dart';
import 'router.dart' as router;

void main() => runApp(ClimbGrader());

class ClimbGrader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.generateRoute,
      initialRoute: StartScreenRoute,
      // initialRoute: '/',
      // routes: {
      //   '/' : (context) => Start(),
      //   '/results' : (context) => ResultsPage(),
      // },
    );
  }
}
