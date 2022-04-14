import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/ui.dart';
import 'package:tap_assignment/gen/fonts.gen.dart';


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

      // main [FF7F7D]
      // second [141414]
      // third [777777]
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        shadow: Colors.grey.withOpacity(0.1),
        primary: Ui.parseColor("#FF7F7D"),
        secondary: Ui.parseColor("#141414"),
        tertiary: Ui.parseColor("#777777"),
        onTertiary: Colors.white,
        background: Colors.white,
        outline: Ui.parseColor("#00BB41"),
        surface: Colors.grey.withOpacity(0.4),
        // primary: Ui.parseColor(appState.settingsState.mainColor),
        // secondary: Ui.parseColor(appState.settingsState.mainColor),
        // tertiary: Colors.white,
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
        // floatingActionButtonTheme:
        //     const FloatingActionButtonThemeData(elevation: 0),
        scaffoldBackgroundColor: Ui.parseColor("#222222"),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            fixedSize: const Size(double.infinity, 50),

            elevation: 3,
            textStyle: const TextStyle(
              fontFamily: FontFamily.montserratRegular,
              fontSize: 16,
              color: Colors.white,
            ),
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
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
            color: Colors.white,
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
          fillColor: Colors.black,
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
          brightness: Brightness.dark,
          shadow: Colors.black.withOpacity(0.3),
          primary: Ui.parseColor("#FF7F7D"),
          secondary: Colors.white,
          tertiary: Ui.parseColor("#777777"),
          onTertiary: Ui.parseColor("#3E2B2B"),
          background: Colors.black,
          outline: Ui.parseColor("#7BEB9D"),
          surface: Colors.grey.withOpacity(0.4),
          
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
