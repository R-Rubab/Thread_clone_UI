import 'package:flutter/material.dart';

extension PaddingSizeBox on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

TextStyle color = const TextStyle(fontSize: 19, color: Colors.black54);
