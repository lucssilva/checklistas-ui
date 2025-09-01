import 'package:flutter/material.dart';

/// Spacing tokens for the CheckListas design system.
///
/// This class provides a consistent spacing scale following an exponential
/// progression that creates visual harmony and hierarchy in layouts.
///
/// Usage:
/// ```dart
/// // Access spacing values
/// final small = AppSpacing.sm;  // 4.0
/// final medium = AppSpacing.md; // 8.0
/// final large = AppSpacing.lg;  // 16.0
///
/// // Use in layouts
/// Container(
///   padding: EdgeInsets.all(AppSpacing.md),
///   margin: EdgeInsets.symmetric(
///     horizontal: AppSpacing.lg,
///     vertical: AppSpacing.sm,
///   ),
/// )
/// ```
mixin AppSpacing {
  // ===== BASE SPACING SCALE =====
  /// Extra Small - 2px (minimal spacing, borders, dividers)
  static const double xs = 2;

  /// Small - 4px (tight spacing, small gaps)
  static const double sm = 4;

  /// Medium - 8px (default spacing, comfortable gaps)
  static const double md = 8;

  /// Large - 16px (generous spacing, component separation)
  static const double lg = 16;

  /// Extra Large - 24px (major sections, large gaps)
  static const double xl = 24;

  /// 2X Large - 32px (page sections, major breaks)
  static const double xxl = 32;

  /// 3X Large - 48px (hero sections, dramatic breaks)
  static const double xxxl = 48;

  // ===== SEMANTIC SPACING =====
  /// Micro spacing - for very fine adjustments
  static const double micro = xs;

  /// Tiny spacing - for small elements
  static const double tiny = sm;

  /// Compact spacing - for dense layouts
  static const double compact = md;

  /// Comfortable spacing - default for most elements
  static const double comfortable = lg;

  /// Generous spacing - for breathing room
  static const double generous = xl;

  /// Spacious spacing - for major sections
  static const double spacious = xxl;

  /// Massive spacing - for hero elements
  static const double massive = xxxl;

  // ===== COMPONENT-SPECIFIC SPACING =====
  /// Button padding horizontal
  static const double buttonHorizontal = lg;

  /// Button padding vertical
  static const double buttonVertical = md;

  /// Input padding
  static const double inputPadding = md;

  /// Card padding
  static const double cardPadding = lg;

  /// Dialog padding
  static const double dialogPadding = xl;

  /// Screen padding (safe area)
  static const double screenPadding = lg;

  // ===== LAYOUT SPECIFIC =====
  /// Grid gutter (space between columns)
  static const double gridGutter = lg;

  /// Container margin
  static const double containerMargin = lg;

  /// Section spacing
  static const double sectionSpacing = xxl;

  /// Page margin
  static const double pageMargin = lg;
}

/// Extension methods for easier spacing usage in Flutter widgets.
extension AppSpacingExtensions on num {
  /// Convert to EdgeInsets.all
  EdgeInsets get all => EdgeInsets.all(toDouble());

  /// Convert to EdgeInsets.symmetric with horizontal padding
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());

  /// Convert to EdgeInsets.symmetric with vertical padding
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());

  /// Convert to SizedBox with width
  SizedBox get width => SizedBox(width: toDouble());

  /// Convert to SizedBox with height
  SizedBox get height => SizedBox(height: toDouble());

  /// Convert to SizedBox with both width and height
  SizedBox get square => SizedBox(width: toDouble(), height: toDouble());
}
