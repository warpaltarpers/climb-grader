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

List<DropdownMenuItem<String>> holds = [
  DropdownMenuItem(
    value: 'Jug',
    child: Text('Jug'),
  ),
  DropdownMenuItem(
    value: 'Edge',
    child: Text('Edge'),
  ),
  DropdownMenuItem(
    value: 'Crimp',
    child: Text('Crimp'),
  ),
  DropdownMenuItem(
    value: 'Pinch',
    child: Text('Pinch'),
  ),
  DropdownMenuItem(
    value: 'Sloper',
    child: Text('Sloper'),
  ),
  DropdownMenuItem(
    value: 'Pocket',
    child: Text('Pocket'),
  ),
  DropdownMenuItem(
    value: 'Flake',
    child: Text('Flake'),
  ),
];