import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoListUiConfig {
  TodoListUiConfig._();

  static ThemeData get theme => ThemeData(
      textTheme: GoogleFonts.mandaliTextTheme(),
      primaryColor: Color.fromARGB(255, 113, 113, 223),
      primaryColorLight: Color.fromARGB(255, 252, 253, 255),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color(0xff5C77CE),
          ),
        ),
      ));
}
