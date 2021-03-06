import 'package:authentication_view/auth_colors.dart';
import 'package:flutter/material.dart';

class ButtonStyle {
  static const DEFAULT  = const ButtonStyle.value(240, 55, 55, AuthColors.green, Colors.white);

  final double width;
  final double height;
  final double cornerRadius;
  final Color  buttonColor;
  final Color  textColor;

  const ButtonStyle.value(this.width, this.height, this.cornerRadius, this.buttonColor, this.textColor);
}
