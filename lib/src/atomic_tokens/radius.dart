import 'package:flutter/material.dart';

/// Border radius tokens for the CheckListas design system.
///
/// This class provides a consistent radius scale following the same
/// exponential progression as spacing, creating visual harmony in
/// rounded corners throughout the application.
///
/// Usage:
/// ```dart
/// Container(
///   decoration: BoxDecoration(
///     borderRadius: BorderRadius.circular(CheckListasRadius.md),
///   ),
/// )
/// ```
class CheckListasRadius {
  // ===== BASE RADIUS SCALE =====
  /// No radius - sharp corners
  static const double none = 0.0;

  /// Extra Small - 2px (minimal rounding)
  static const double xs = 2.0;

  /// Small - 4px (subtle rounding)
  static const double sm = 4.0;

  /// Medium - 8px (comfortable rounding)
  static const double md = 8.0;

  /// Large - 16px (generous rounding)
  static const double lg = 16.0;

  /// Extra Large - 24px (pronounced rounding)
  static const double xl = 24.0;

  /// Full radius - completely rounded
  static const double full = 999.0;

  // ===== SEMANTIC ALIASES =====
  /// Minimal radius - for very subtle rounding
  static const double minimal = xs;

  /// Subtle radius - for gentle rounding
  static const double subtle = sm;

  /// Comfortable radius - default for most elements
  static const double comfortable = md;

  /// Pronounced radius - for emphasis
  static const double pronounced = lg;

  /// Pill radius - for pill-shaped elements
  static const double pill = xl;

  /// Circular radius - for completely circular elements
  static const double circular = full;

  // ===== COMPONENT-SPECIFIC =====
  /// Button radius
  static const double button = md;

  /// Input field radius
  static const double input = sm;

  /// Card radius
  static const double card = lg;

  /// Dialog radius
  static const double dialog = xl;

  /// Chip radius
  static const double chip = xl;

  /// Avatar radius
  static const double avatar = full;

  /// Tooltip radius
  static const double tooltip = sm;
}

/// Extension methods for easier radius usage in Flutter widgets.
extension CheckListasRadiusExtensions on double {
  /// Convert to BorderRadius.circular
  BorderRadius get circular => BorderRadius.circular(this);

  /// Convert to BorderRadius.all
  BorderRadius get all => BorderRadius.all(Radius.circular(this));

  /// Convert to Radius.circular
  Radius get radius => Radius.circular(this);
}
