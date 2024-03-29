import 'package:flutter/material.dart';
import 'package:zenon_syrius_wallet_flutter/utils/app_colors.dart';

const DividerThemeData kDefaultDividerThemeData = DividerThemeData(
  thickness: 1.0,
  indent: 0.0,
  endIndent: 0.0,
  space: 1.0,
);

final ButtonStyle kElevatedButtonStyle = ElevatedButton.styleFrom(
  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      6.0,
    ),
  ),
  minimumSize: const Size(55, 42),
  backgroundColor: AppColors.znnColor,
);

final ButtonStyle kOutlinedButtonStyle = OutlinedButton.styleFrom(
  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      6.0,
    ),
  ),
  side: const BorderSide(
    color: AppColors.znnColor,
  ),
  textStyle: kOutlinedButtonTextStyle,
);

const TextStyle kDisplaySmallTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
);

const TextStyle kBodyLargeTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
);

const TextStyle kBodyMediumTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
);

const TextStyle kBodySmallTextStyle = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w300,
);

const TextStyle kHeadlineLargeTextStyle = TextStyle(
  fontSize: 26.0,
  fontWeight: FontWeight.w500,
);

const TextStyle kHeadlineMediumTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w500,
);

const TextStyle kHeadlineSmallTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

const TextStyle kOutlinedButtonTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

const TextStyle kTextButtonTextStyle = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w400,
);

const TextStyle kTitleMediumTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  color: AppColors.subtitleColor,
);

const TextStyle kTitleSmallTextStyle = TextStyle(
  fontSize: 10.0,
  fontWeight: FontWeight.w400,
  color: AppColors.subtitleColor,
);

final TextButtonThemeData kTextButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    textStyle: kTextButtonTextStyle,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    minimumSize: const Size(55.0, 25.0),
    backgroundColor: AppColors.znnColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        8.0,
      ),
    ),
  ),
);

const TextStyle kHintTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14.0,
);

const TextStyle kTextFormFieldErrorStyle = TextStyle(
  color: AppColors.errorColor,
);

const OutlineInputBorder kOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
);

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    hoverColor: AppColors.lightTextFormFieldFill,
    textButtonTheme: kTextButtonThemeData,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: kOutlinedButtonStyle.copyWith(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.black38;
            }
            return Colors.black;
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: kElevatedButtonStyle,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.znnColor,
      selectionHandleColor: AppColors.znnColor,
    ),
    fontFamily: 'Roboto',
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.lightTextFormFieldFill,
      hintStyle: kHintTextStyle.copyWith(
        color: AppColors.lightHintTextColor,
      ),
      errorStyle: kTextFormFieldErrorStyle,
      enabledBorder: kOutlineInputBorder.copyWith(
        borderSide: BorderSide.none,
      ),
      disabledBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: AppColors.inactiveIconsGray),
      ),
      focusedBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: AppColors.inactiveIconsGray),
      ),
      errorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.errorColor,
          width: 2.0,
        ),
      ),
      focusedErrorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.errorColor,
          width: 2.0,
        ),
      ),
    ),
    dividerTheme: kDefaultDividerThemeData.copyWith(
      color: AppColors.lightDividerColor,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.lightSecondary,
    ),
    textTheme: TextTheme(
      bodyLarge: kBodyMediumTextStyle.copyWith(
        color: Colors.black,
      ),
      bodyMedium: kBodyMediumTextStyle.copyWith(
        color: Colors.black,
      ),
      bodySmall: kBodySmallTextStyle.copyWith(
        color: Colors.black,
      ),
      titleMedium: kTitleMediumTextStyle,
      titleSmall: kTitleSmallTextStyle,
      headlineLarge: kHeadlineLargeTextStyle.copyWith(
        color: Colors.black,
      ),
      headlineMedium: kHeadlineMediumTextStyle.copyWith(
        color: Colors.black,
      ),
      headlineSmall: kHeadlineSmallTextStyle.copyWith(
        color: Colors.black,
      ),
    ),
    unselectedWidgetColor: AppColors.lightSecondaryContainer,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      primaryContainer: AppColors.lightPrimaryContainer,
      secondary: AppColors.lightSecondary,
      secondaryContainer: AppColors.lightSecondaryContainer,
      error: AppColors.errorColor,
    ).copyWith(background: AppColors.backgroundLight),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    hoverColor: AppColors.darkTextFormFieldFill,
    textButtonTheme: kTextButtonThemeData,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: kOutlinedButtonStyle.copyWith(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.white38;
            }
            return Colors.white;
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: kElevatedButtonStyle,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.white.withOpacity(0.1),
      cursorColor: AppColors.znnColor,
      selectionHandleColor: AppColors.znnColor,
    ),
    fontFamily: 'Roboto',
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.darkTextFormFieldFill,
      hintStyle: kHintTextStyle.copyWith(
        color: AppColors.darkHintTextColor,
      ),
      errorStyle: kTextFormFieldErrorStyle,
      enabledBorder: kOutlineInputBorder.copyWith(
        borderSide: BorderSide.none,
      ),
      disabledBorder: kOutlineInputBorder.copyWith(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
        ),
      ),
      focusedBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(color: AppColors.znnColor),
      ),
      errorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.errorColor,
          width: 2.0,
        ),
      ),
      focusedErrorBorder: kOutlineInputBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.errorColor,
          width: 2.0,
        ),
      ),
    ),
    dividerTheme: kDefaultDividerThemeData.copyWith(
      color: AppColors.darkDividerColor,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.lightSecondary,
    ),
    textTheme: TextTheme(
      bodyLarge: kBodyLargeTextStyle.copyWith(
        color: Colors.white,
      ),
      bodyMedium: kBodyMediumTextStyle.copyWith(
        color: Colors.white,
      ),
      bodySmall: kBodySmallTextStyle.copyWith(
        color: Colors.white,
      ),
      titleMedium: kTitleMediumTextStyle,
      titleSmall: kTitleSmallTextStyle,
      headlineLarge: kHeadlineLargeTextStyle.copyWith(
        color: Colors.white,
      ),
      headlineMedium: kHeadlineMediumTextStyle.copyWith(
        color: Colors.white,
      ),
      headlineSmall: kHeadlineSmallTextStyle.copyWith(
        color: Colors.white,
      ),
    ),
    unselectedWidgetColor: AppColors.darkSecondaryContainer,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.znnColor;
        }
        return null;
      }),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkPrimary,
      primaryContainer: AppColors.darkPrimaryContainer,
      secondary: AppColors.darkSecondary,
      secondaryContainer: AppColors.darkSecondaryContainer,
      error: AppColors.errorColor,
    ).copyWith(background: AppColors.backgroundDark),
  );

  AppTheme._();
}
