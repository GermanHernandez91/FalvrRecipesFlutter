import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/material.dart';

ThemeData buildAppTheme(BuildContext context) {
  return ThemeData(
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    buttonColor: Constants.orangeColor,
    primaryColor: Colors.white,
    accentColor: Colors.white,
    fontFamily: 'Montserrat',
    buttonTheme: ButtonThemeData(
      minWidth: 344.0,
      height: 48.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      textTheme: ButtonTextTheme.primary,
      buttonColor: Theme.of(context).buttonColor,
    ),
    textTheme: TextTheme(
      caption: TextStyle(
        fontSize: 20.0,
        fontFamily: 'Proxima_Nova',
        fontWeight: FontWeight.bold,
        letterSpacing: 1.75,
        color: Constants.blackColor,
      ),
      subhead: TextStyle(
        fontSize: 10.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.normal,
        letterSpacing: 1,
        color: Constants.grayColor,
      ),
      headline: TextStyle(
        fontSize: 36.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.25,
        color: Constants.blackColor,
      ),
      title: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Proxima_Nova',
        letterSpacing: 1.75,
        color: Constants.blackColor,
      ),
      body1: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Montserrat',
        color: Constants.blackColor,
      ),
      body2: TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.5,
        fontFamily: 'Montserrat',
        color: Constants.grayColor,
      ),
      button: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Proxima_Nova',
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
