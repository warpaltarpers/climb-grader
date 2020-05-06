import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kCardTextColor = Color(0xFFFFFFFF);

const kCardTextStyle = TextStyle(
  fontSize: 18.0,
  color: kCardTextColor,
);

TextStyle kLabelTextStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    fontSize: 18.0,
    color: kCardTextColor,
    fontWeight: FontWeight.w900,
  )
);

TextStyle kResultsStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    fontSize: 25.0,
    color: kCardTextColor,
    fontWeight: FontWeight.w500,
  )
);

const kDegreeSymbol = TextStyle(
  fontSize: 40.0,
  color: kCardTextColor,
  fontWeight: FontWeight.w300
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w400,
  color: kCardTextColor,
);

const kColorGradient = [
  Color(0xFF1a936f),
  Color(0xFF88d498),
];

const kActiveCardColor = Color(0x50FFFFFF);
const kInactiveCardColor = Color(0xa07FDBFF);