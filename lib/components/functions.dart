import 'package:climb_grader/components/climbing_enums.dart';
import 'package:flutter/material.dart';

GradingSystem parseSystem(String iS) {
  GradingSystem rS;
  
  switch (iS) {
    case 'Yosemite':
      rS = GradingSystem.yosemite;
      break;
    case 'Ewbank':
      rS = GradingSystem.ewbank;
      break;
    case 'French':
      rS = GradingSystem.french;
      break;
    case 'Hueco (V)':
      rS = GradingSystem.hueco;
      break;
    case 'Font':
      rS = GradingSystem.hueco;
      break;
  }
  
  return rS;
}

Holds parseHolds(String iH) {
  Holds rH;
  
  switch (iH) {
    case 'Jug':
      rH = Holds.jug;
      break;
    case 'Edge':
      rH = Holds.edge;
      break;
    case 'Crimp':
      rH = Holds.crimp;
      break;
    case 'Pinch':
      rH = Holds.pinch;
      break;
    case 'Sloper':
      rH = Holds.sloper;
      break;
    case 'Pocket':
      rH = Holds.pocket;
      break;
    case 'Flake':
      rH = Holds.flake;
      break;
  }
  
  return rH;
}