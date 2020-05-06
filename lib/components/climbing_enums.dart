import 'package:flutter/material.dart';

enum GradingSystem {
  yosemite,
  ewbank,
  french,
  hueco,
  font,
}

List<String> systems = [
  'YOS', 'EWB', 'FRE', 'V', 'FON'
];

enum Holds {
  jug,
  edge,
  crimp,
  pinch,
  sloper,
  pocket,
  flake,
}

List<String> holds = [
  'JUG', 'EDG', 'CRM', 'PIN', 'SLO', 'POC', 'FLA'
];