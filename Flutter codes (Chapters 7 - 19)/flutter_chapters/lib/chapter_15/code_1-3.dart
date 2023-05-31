import 'package:flutter/material.dart';

void basicTween() {
  var tween = Tween(begin: 0.0, end: 100.0);
  // prints “50”
  print(tween.transform(0.5));
}

void tweenWithColor() {
  var colorTween = Tween<Color?>(begin: Colors.red, end: Colors.blue);
  print(colorTween.transform(0.5).toString());
}

void colorTween() {
  var tween = ColorTween(begin: Colors.red, end: Colors.blue);
  print(tween.transform(0.5).toString());
}
