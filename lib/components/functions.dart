import 'package:climb_grader/components/systems.dart';
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