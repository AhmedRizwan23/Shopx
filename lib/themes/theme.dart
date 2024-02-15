import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),
);

ThemeData darkmode = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(255, 255, 26, 26),
    primary: const Color.fromARGB(255, 233, 54, 54),
    secondary: const Color.fromARGB(255, 196, 25, 25),
    inversePrimary: Colors.grey.shade200,
  ),
);
