import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTypo {
  // ===== DISPLAY STYLES =====
  /// Display Large - 57px/64px, for hero text
  static TextStyle? displayLarge = GoogleFonts.inter(
    fontSize: 57,
    height: 64 / 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -.25,
  );

  /// Display Medium - 45px/52px, for large hero text
  static TextStyle? displayMedium = GoogleFonts.inter(
    fontSize: 45,
    height: 52 / 45,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Display Small - 36px/44px, for section headers
  static TextStyle? displaySmall = GoogleFonts.inter(
    fontSize: 36,
    height: 44 / 36,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  // ===== HEADLINE STYLES =====
  /// Headline Large - 32px/40px, for main page headers
  static TextStyle? headlineLarge = GoogleFonts.inter(
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Headline Medium - 28px/36px, for section headers
  static TextStyle? headlineMedium = GoogleFonts.inter(
    fontSize: 28,
    height: 36 / 28,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  /// Headline Small - 24px/32px, for card headers
  static TextStyle? headlineSmall = GoogleFonts.inter(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );

  // ===== TITLE STYLES =====
  /// Title Large - 22px/28px, for card titles
  static TextStyle? titleLarge = GoogleFonts.inter(
    fontSize: 22,
    height: 28 / 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  /// Title Medium - 16px/24px, for list item titles
  static TextStyle? titleMedium = GoogleFonts.inter(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
    letterSpacing: .15,
  );

  /// Title Small - 14px/20px, for small titles
  static TextStyle? titleSmall = GoogleFonts.inter(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
  );

  // ===== BODY STYLES =====
  /// Body Large - 16px/24px, for primary body text
  static TextStyle? bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .5,
  );

  /// Body Medium - 14px/20px, for secondary body text
  static TextStyle? bodyMedium = GoogleFonts.inter(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
    letterSpacing: .25,
  );

  /// Body Small - 12px/16px, for captions
  static TextStyle? bodySmall = GoogleFonts.inter(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    letterSpacing: .4,
  );

  // ===== LABEL STYLES =====
  /// Label Large - 14px/20px, for buttons and chips
  static TextStyle? labelLarge = GoogleFonts.inter(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
  );

  /// Label Medium - 12px/16px, for input labels
  static TextStyle? labelMedium = GoogleFonts.inter(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
    letterSpacing: .5,
  );

  /// Label Small - 11px/16px, for small labels
  static TextStyle? labelSmall = GoogleFonts.inter(
    fontSize: 11,
    height: 16 / 11,
    fontWeight: FontWeight.w500,
    letterSpacing: .5,
  );

  // ===== COMPONENT-SPECIFIC STYLES =====
  /// Button text style - 14px/20px, medium weight
  static TextStyle? button = GoogleFonts.inter(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
  );

  /// Caption text style - 12px/16px, regular weight
  static TextStyle? caption = GoogleFonts.inter(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    letterSpacing: .4,
  );

  /// Overline text style - 10px/16px, medium weight, uppercase
  static TextStyle? overline = GoogleFonts.inter(
    fontSize: 10,
    height: 16 / 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
  );

  static TextTheme light() => TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );

  static TextTheme dark() => TextTheme(
    displayLarge: displayLarge?.copyWith(),
    displayMedium: displayMedium?.copyWith(),
    displaySmall: displaySmall?.copyWith(),
    headlineLarge: headlineLarge?.copyWith(),
    headlineMedium: headlineMedium?.copyWith(),
    headlineSmall: headlineSmall?.copyWith(),
    titleLarge: titleLarge?.copyWith(),
    titleMedium: titleMedium?.copyWith(),
    titleSmall: titleSmall?.copyWith(),
    bodyLarge: bodyLarge?.copyWith(),
    bodyMedium: bodyMedium?.copyWith(),
    bodySmall: bodySmall?.copyWith(),
    labelLarge: labelLarge?.copyWith(),
    labelMedium: labelMedium?.copyWith(),
    labelSmall: labelSmall?.copyWith(),
  );
}
