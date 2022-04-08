import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/ui.dart';
import 'package:tap_assignment/gen/fonts.gen.dart';

// {
//   FontWeight.w100: 'Thin',
//   FontWeight.w200: 'ExtraLight',
//   FontWeight.w300: 'Light',
//   FontWeight.w400: 'Regular',
//   FontWeight.w500: 'Medium',
//   FontWeight.w600: 'SemiBold',
//   FontWeight.w700: 'Bold',
//   FontWeight.w800: 'ExtraBold',
//   FontWeight.w900: 'Black',
// }

abstract class CustomAppTheme {
  static ThemeData getLightTheme(AppState appState) {
    return ThemeData(
      primaryColor: Ui.parseColor("#FD7272"),
      scaffoldBackgroundColor: Ui.parseColor("#F9F9F9"),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey,
          fixedSize: const Size(double.infinity, 50),
          elevation: 3,
          textStyle: const TextStyle(
            fontFamily: FontFamily.montserratBold,
            fontSize: 16,
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: BorderSide.none,
          ),
          onPrimary: Ui.parseColor("#FD7272"),
          primary: Ui.parseColor("#FD7272"),
        ),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: Ui.parseColor("#F9F9F9"),
        // This will be applied to the "back" icon
        iconTheme: const IconThemeData(color: Colors.grey),
        // This will be applied to the action icon buttons that locates on the right side
        actionsIconTheme: const IconThemeData(color: Colors.grey),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: FontFamily.montserratBold,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        hintStyle: TextStyle(
          color: Colors.grey,
          // fontFamily: theme.primaryTextTheme.headline6.fontFamily,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0, foregroundColor: Colors.white),
      brightness: Brightness.light,
      dividerColor:
          Ui.parseColor(appState.settingsState.mainColor, opacity: 0.1),
      focusColor: Ui.parseColor(appState.settingsState.accentColor),
      // hintColor: Ui.parseColor("#929292"),
      hintColor: Colors.grey[100],
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Ui.parseColor(appState.settingsState.mainColor)),
      ),
      colorScheme: ColorScheme.light(
        primary: Ui.parseColor(appState.settingsState.mainColor),
        secondary: Ui.parseColor(appState.settingsState.mainColor),
        tertiary: Colors.white,
      ),
      textTheme: GoogleFonts.getTextTheme(
        appState.settingsState.googleFont,
        TextTheme(
          headline6: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: Ui.parseColor(appState.settingsState.mainColor),
              height: 1.3),
          headline5: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.3),
          headline4: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.3),
          headline3: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.3),
          headline2: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              color: Ui.parseColor(appState.settingsState.mainColor),
              height: 1.4),
          headline1: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w300,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.4),
          subtitle2: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.2),
          subtitle1: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
              color: Ui.parseColor(appState.settingsState.mainColor),
              height: 1.2),
          bodyText2: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.2),
          bodyText1: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Ui.parseColor(appState.settingsState.secondColor),
              height: 1.2),
          caption: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              color: Ui.parseColor(appState.settingsState.accentColor),
              height: 1.2),
        ),
      ),
    );
  }

  static ThemeData getDarkTheme(AppState appState) {
    return ThemeData(
        primaryColor: Ui.parseColor("#FE716F"),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(elevation: 0),
        scaffoldBackgroundColor: Ui.parseColor("#222222"),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.grey,
            // fixedSize: const Size(double.infinity, 80),

            elevation: 3,
            textStyle: const TextStyle(
              fontFamily: FontFamily.montserratBold,
              fontSize: 16,
              color: Colors.white,
            ),
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide.none,
            ),
            onPrimary: Ui.parseColor("#FD7272"),
            primary: Ui.parseColor("#FD7272"),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Ui.parseColor("#222222"),
          // This will be applied to the "back" icon
          iconTheme: const IconThemeData(color: Colors.grey),
          // This will be applied to the action icon buttons that locates on the right side
          actionsIconTheme: const IconThemeData(color: Colors.grey),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: FontFamily.montserratBold,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          hintStyle: TextStyle(
            color: Colors.grey,
            // fontFamily: theme.primaryTextTheme.headline6.fontFamily,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
        brightness: Brightness.dark,
        dividerColor:
            Ui.parseColor(appState.settingsState.accentDarkColor, opacity: 0.1),
        focusColor: Ui.parseColor(appState.settingsState.accentDarkColor),
        hintColor: Ui.parseColor(appState.settingsState.secondDarkColor),
        toggleableActiveColor:
            Ui.parseColor(appState.settingsState.mainDarkColor),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              primary: Ui.parseColor(appState.settingsState.mainColor)),
        ),
        colorScheme: ColorScheme.dark(
          primary: Ui.parseColor(appState.settingsState.mainDarkColor),
          secondary: Ui.parseColor(appState.settingsState.mainDarkColor),
        ),
        textTheme: GoogleFonts.getTextTheme(
            appState.settingsState.googleFont,
            TextTheme(
              headline6: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  color: Ui.parseColor(appState.settingsState.mainDarkColor),
                  height: 1.3),
              headline5: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.3),
              headline4: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.3),
              headline3: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.3),
              headline2: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                  color: Ui.parseColor(appState.settingsState.mainDarkColor),
                  height: 1.4),
              headline1: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w300,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.4),
              subtitle2: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.2),
              subtitle1: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Ui.parseColor(appState.settingsState.mainDarkColor),
                  height: 1.2),
              bodyText2: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.2),
              bodyText1: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Ui.parseColor(appState.settingsState.secondDarkColor),
                  height: 1.2),
              caption: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Ui.parseColor(appState.settingsState.accentDarkColor),
                  height: 1.2),
            )));
  }
}
