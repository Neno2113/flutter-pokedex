import 'package:flutter/material.dart';





const seedColor = Color.fromARGB(255, 149, 70, 228);

class AppTheme {

  final bool isDarkMode;

  AppTheme({required this.isDarkMode});


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,

    
  );

}