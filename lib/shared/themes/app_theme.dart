import 'package:desafio_layout/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Apptheme {
  static ThemeData get lightTheme {
    return ThemeData(

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 50,
          color: AppColors.primary,
          fontWeight: FontWeight.bold
        ),
        titleSmall: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 20,
          color: AppColors.secondary,
          fontWeight: FontWeight.w700
        ),
        titleMedium: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 20,
          color: AppColors.secondary,
          fontWeight: FontWeight.w700
        ),
        labelLarge: TextStyle(
          fontFamily: "Concert One",
          fontSize: 28,
          color: AppColors.secondary,
          fontWeight: FontWeight.w700
        ),
        labelMedium: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 20,
          color: AppColors.secondary,
          fontWeight: FontWeight.w700
        ),
        labelSmall: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 18,
          color: AppColors.secondary,
          fontWeight: FontWeight.w700
        ),
        displaySmall: TextStyle(
          fontFamily: "Concert One",
          fontSize: 20,
          color: AppColors.options,
          fontWeight: FontWeight.w700
        ),
      ),

      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.card,
        primaryContainer: AppColors.card,
        secondary: AppColors.secondary,
        onSecondary: AppColors.background,
        error: Colors.red,
        onError: AppColors.background,
        background: AppColors.background,
        onBackground: AppColors.primary,
        surface: AppColors.options,
        onSurface: AppColors.primary,
        shadow: Colors.grey,
      )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 50,
          color: AppColors.background,
          fontWeight: FontWeight.bold
        ),
        titleSmall: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 20,
          color: AppColors.background,
          fontWeight: FontWeight.w700
        ),
        titleMedium: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 20,
          color: AppColors.primary,
        ),
        labelLarge: TextStyle(
          fontFamily: "Concert One",
          fontSize: 28,
          color: AppColors.background,
          fontWeight: FontWeight.w700
        ),
        labelMedium: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 20,
          color: AppColors.background,
          fontWeight: FontWeight.w700
        ),
        labelSmall: TextStyle(
          fontFamily: "Marker Felt",
          fontSize: 18,
          color: AppColors.background,
        ),
        displaySmall: TextStyle(
          fontFamily: "Concert One",
          fontSize: 20,
          color: AppColors.options,
          fontWeight: FontWeight.w700
        ),
      ),

      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.background,
        onPrimary: AppColors.background,
        primaryContainer: AppColors.primary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.background,
        error: Colors.red,
        onError: AppColors.background,
        background: Color(0xFF101111),
        onBackground: AppColors.background,
        surface: AppColors.options,
        onSurface: AppColors.primary,
        shadow: Color.fromARGB(255, 31, 31, 31),
      )
    );
  }
}

