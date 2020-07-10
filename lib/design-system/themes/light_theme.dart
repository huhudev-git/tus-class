import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFFEFEEEE),
  backgroundColor: Color(0xFFEFEEEE),
  primarySwatch: Colors.grey,
  primaryColor: Color(0xFFEFEEEE),
  primaryColorLight: Colors.lightBlueAccent,
  primaryIconTheme: IconThemeData(color: Colors.blue),
  accentColor: Colors.blueAccent,
  accentIconTheme: IconThemeData(color: Colors.white),
  iconTheme: IconThemeData(color: Colors.blue),
  appBarTheme: AppBarTheme(
    elevation: 4.0,
    color: Color(0xFFEFEEEE),
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xFFEFEEEE),
    labelStyle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelColor: Colors.black54,
    unselectedLabelStyle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
    ),
  ),
  cardColor: Color(0xFFEFEEEE),
  errorColor: Color(0xFFd9534f),
  primaryTextTheme: TextTheme(
    headline2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w300,
    ),
    subtitle1: TextStyle(
      color: Colors.black87,
    ),
    subtitle2: TextStyle(
      color: Colors.black38,
      fontWeight: FontWeight.w300,
    ),
    bodyText1: TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w300,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsetsDirectional.fromSTEB(14.0, 5.0, 5.0, 5.0),
    errorStyle: TextStyle(height: 0),
    hintStyle: TextStyle(
      color: Colors.black45,
      fontWeight: FontWeight.w300,
    ),
    border: OutlineInputBorder(
      gapPadding: 0.0,
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        width: 0.0,
        color: Colors.transparent,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      gapPadding: 0.0,
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        width: 0.0,
        color: Colors.transparent,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      gapPadding: 0.0,
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        width: 0.0,
        color: Colors.transparent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      gapPadding: 0.0,
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        width: 0.0,
        color: Colors.transparent,
      ),
    ),
  ),
  buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
  buttonBarTheme: ButtonBarThemeData(
    buttonTextTheme: ButtonTextTheme.primary,
  ),
);
