import 'package:flutter/material.dart';

class ThemeState {
  final bool isDark;

  ThemeState(this.isDark);

  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
}