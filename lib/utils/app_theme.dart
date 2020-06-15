import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:whetherapp/utils/app_size_config.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF303960);
  static const Color secondaryColor = Color(0xFFFFFFFF);
  static const Color accentColor = Color(0xFFF8B24F);
  static const Color backgroundColor = Color(0xFFE5E5E5);
  static const Color hintColor = Color(0xFFB7B7B7);
  static const Color errorColor = Color(0xFFd8414d);

  static final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    accentColor: accentColor,
    errorColor: errorColor,
    appBarTheme: _appBarTheme,
    iconTheme: _iconTheme,
    textTheme: _textTheme,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: AppTheme.hintColor,
      ),
    ),
    fontFamily: 'Rubik',
  );

  static final AppBarTheme _appBarTheme = AppBarTheme(
    color: primaryColor,
    textTheme: _textTheme.copyWith(
      headline1: _title.copyWith(color: secondaryColor),
      subtitle1: _subTitle.copyWith(color: secondaryColor),
      bodyText1: _body1.copyWith(color: secondaryColor),
      bodyText2: _body2,
      button: _button.copyWith(color: primaryColor),
    ),
  );

  static final IconThemeData _iconTheme = IconThemeData(
    color: hintColor,
    size: 6 * AppSizeConfig.imageSizeMultiplier,
  );

  static final TextTheme _textTheme = TextTheme(
    headline1: _title,
    subtitle1: _subTitle,
    bodyText1: _body1,
    bodyText2: _body2,
    button: _button,
  );

  static final TextStyle _title = TextStyle(
    color: primaryColor,
    fontSize: 2.75 * AppSizeConfig.textMultiplier,
  );

  static final TextStyle _subTitle = TextStyle(
    color: primaryColor,
    fontSize: 2.5 * AppSizeConfig.textMultiplier,
  );

  static final TextStyle _body1 = TextStyle(
    color: primaryColor,
    fontSize: 2.0 * AppSizeConfig.textMultiplier,
  );

  static final TextStyle _body2 = TextStyle(
    color: accentColor,
    fontSize: 1.75 * AppSizeConfig.textMultiplier,
  );

  static final TextStyle _button = TextStyle(
    color: secondaryColor,
    fontSize: 2.0 * AppSizeConfig.textMultiplier,
    fontWeight: FontWeight.w700,
  );
}
