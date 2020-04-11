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
