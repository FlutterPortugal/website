import 'package:flutter/material.dart';
import 'package:landing_page/shared/build_context_extensions.dart';

@immutable
class PublicTheme {
  const PublicTheme();

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      textTheme: TextTheme(
        displaySmall: TextStyle(
          color: context.colorScheme.primary,
          fontWeight: FontWeight.w200,
        ),
        titleLarge: TextStyle(
          color: context.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: TextStyle(
          color: context.colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
