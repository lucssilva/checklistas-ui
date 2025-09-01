import 'package:flutter/material.dart';

/// Shadow tokens for the CheckListas design system.
///
/// This class provides elevation-based shadow definitions that create
/// visual depth and hierarchy in the UI.
///
/// Usage:
/// ```dart
/// // Access shadow values
/// final low = AppShadows.level1;
/// final medium = AppShadows.level2;
/// final high = AppShadows.level4;
///
/// // Use in widgets
/// Container(
///   decoration: BoxDecoration(
///     boxShadow: AppShadows.level2,
///   ),
/// )
/// ```
mixin AppShadows {
  // ===== AESTHETIC =====
  static const List<BoxShadow> level0 = [];
  static const List<BoxShadow> level1 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.05), offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0),
  ];
  static const List<BoxShadow> level2 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08), offset: Offset(0, 2), blurRadius: 4, spreadRadius: 0),
  ];
  static const List<BoxShadow> level3 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.10), offset: Offset(0, 4), blurRadius: 6, spreadRadius: 0),
  ];
  static const List<BoxShadow> level4 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.12), offset: Offset(0, 4), blurRadius: 8, spreadRadius: 0),
  ];
  static const List<BoxShadow> level5 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.14), offset: Offset(0, 8), blurRadius: 16, spreadRadius: 0),
  ];
  static const List<BoxShadow> level6 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.16), offset: Offset(0, 12), blurRadius: 24, spreadRadius: 0),
  ];
  // ===== SEMANTIC =====
  static const List<BoxShadow> flat = level0;
  static const List<BoxShadow> subtle = level1;
  static const List<BoxShadow> lightShadow = level2;
  static const List<BoxShadow> medium = level3;
  static const List<BoxShadow> strong = level4;
  static const List<BoxShadow> heavy = level5;

  // ===== COMPONENT-SPECIFIC =====
  static const List<BoxShadow> button = level2;
  static const List<BoxShadow> buttonPressed = level1;
  static const List<BoxShadow> card = level1;
  static const List<BoxShadow> dialog = level4;
  static const List<BoxShadow> tooltip = level3;
  static const List<BoxShadow> dropdown = level3;

  static AppShadowPalette light() => const AppShadowPalette(
    level0: level0,
    level1: level1,
    level2: level2,
    level3: level3,
    level4: level4,
    level5: level5,
    level6: level6,
  );

  static AppShadowPalette dark() => const AppShadowPalette(
    level0: level0,
    level1: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0)],
    level2: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.20), offset: Offset(0, 2), blurRadius: 4, spreadRadius: 0)],
    level3: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25), offset: Offset(0, 4), blurRadius: 6, spreadRadius: 0)],
    level4: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.30), offset: Offset(0, 4), blurRadius: 8, spreadRadius: 0)],
    level5: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.35), offset: Offset(0, 8), blurRadius: 16, spreadRadius: 0)],
    level6: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.40), offset: Offset(0, 12), blurRadius: 24, spreadRadius: 0)],
  );
}

class AppShadowPalette {
  const AppShadowPalette({
    required this.level0,
    required this.level1,
    required this.level2,
    required this.level3,
    required this.level4,
    required this.level5,
    required this.level6,
  }) : flat = level0,
       subtle = level1,
       light = level2,
       medium = level3,
       strong = level4,
       heavy = level5,
       button = level2,
       buttonPressed = level1,
       card = level1,
       dialog = level4,
       tooltip = level3,
       dropdown = level3;
  final List<BoxShadow> level0;
  final List<BoxShadow> level1;
  final List<BoxShadow> level2;
  final List<BoxShadow> level3;
  final List<BoxShadow> level4;
  final List<BoxShadow> level5;
  final List<BoxShadow> level6;
  final List<BoxShadow> flat;
  final List<BoxShadow> subtle;
  final List<BoxShadow> light;
  final List<BoxShadow> medium;
  final List<BoxShadow> strong;
  final List<BoxShadow> heavy;
  final List<BoxShadow> button;
  final List<BoxShadow> buttonPressed;
  final List<BoxShadow> card;
  final List<BoxShadow> dialog;
  final List<BoxShadow> tooltip;
  final List<BoxShadow> dropdown;
}
