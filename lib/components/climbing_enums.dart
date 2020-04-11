import 'package:flutter/material.dart';

enum GradingSystem {
  yosemite,
  ewbank,
  french,
  hueco,
  font,
}

List<DropdownMenuItem<String>> systems = [
  DropdownMenuItem(
    value: 'Yosemite',
    child: Text('Yosemite'),
  ),
  DropdownMenuItem(
    value: 'Ewbank',
    child: Text('Ewbank'),
  ),
  DropdownMenuItem(
    value: 'French',
    child: Text('French'),
  ),
  DropdownMenuItem(
    value: 'Hueco (V)',
    child: Text('Hueco (V)'),
  ),
  DropdownMenuItem(
    value: 'Font',
    child: Text('Font'),
  ),
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