import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'results.dart';
import 'package:climb_grader/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case StartScreenRoute:
      return MaterialPageRoute(builder: (context) => Start());
    case ResultsPageRoute:
      return MaterialPageRoute(builder: (context) => ResultsPage());
    default:
      return MaterialPageRoute(builder: (context) => Start());
  }
}