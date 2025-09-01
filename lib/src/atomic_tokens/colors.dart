import 'package:flutter/material.dart';

/// Color tokens for the CheckListas design system.
///
/// This class provides a comprehensive set of colors organized by semantic meaning
/// and usage context. Colors are designed to work well in both light and dark themes.
///
/// Usage:
/// ```dart
/// // Access primary colors
/// final primary = CheckListasColors.primary;
/// final primaryLight = CheckListasColors.primaryLight;
///
/// // Access semantic colors
/// final success = CheckListasColors.success;
/// final error = CheckListasColors.error;
///
/// // Access surface colors
/// final surface = CheckListasColors.surface;
/// final onSurface = CheckListasColors.onSurface;
/// ```
mixin AppColors {
  // ===== PRIMARY COLORS =====
  static const Color primary = Color(0xFF1E40AF); // Primary brand color - main action color
  static const Color primaryLight = Color(0xFF3B82F6); // Lighter shade of primary for hover states
  static const Color primaryDark = Color(0xFF1D4ED8); // Darker shade of primary for pressed states
  static const Color primaryContainer = Color(0xFFDBEAFE); // Primary container color for filled elements
  static const Color onPrimary = Color(0xFFFFFFFF); // Text/icon color on primary backgrounds
  static const Color onPrimaryContainer = Color(0xFF1E3A8A); // Text color on primary container backgrounds
  // ===== SECONDARY COLORS =====
  static const Color secondary = Color(0xFF64748B); // Secondary brand color - supporting actions
  static const Color secondaryLight = Color(0xFF94A3B8); // Lighter shade of secondary
  static const Color secondaryDark = Color(0xFF475569); // Darker shade of secondary
  static const Color secondaryContainer = Color(0xFFF1F5F9); // Secondary container color
  static const Color onSecondary = Color(0xFFFFFFFF); // Text/icon color on secondary backgrounds
  static const Color onSecondaryContainer = Color(0xFF334155); // Text color on secondary container backgrounds
  // ===== TERTIARY COLORS =====
  static const Color tertiary = Color(0xFF7C3AED); // Tertiary accent color - special highlights
  static const Color tertiaryLight = Color(0xFFA78BFA); // Lighter shade of tertiary
  static const Color tertiaryDark = Color(0xFF6D28D9); // Darker shade of tertiary
  static const Color tertiaryContainer = Color(0xFFF3E8FF); // Tertiary container color
  static const Color onTertiary = Color(0xFFFFFFFF); // Text/icon color on tertiary backgrounds
  static const Color onTertiaryContainer = Color(0xFF581C87); // Text color on tertiary container backgrounds
  // ===== SEMANTIC COLORS =====
  static const Color success = Color(0xFF10B981); // Success color for positive actions and states
  static const Color successContainer = Color(0xFFD1FAE5); // Success container color
  static const Color onSuccess = Color(0xFFFFFFFF); // Text color on success backgrounds
  static const Color onSuccessContainer = Color(0xFF065F46); // Text color on success container backgrounds
  static const Color warning = Color(0xFFF59E0B); // Warning color for cautionary states
  static const Color warningContainer = Color(0xFFFEF3C7); // Warning container color
  static const Color onWarning = Color(0xFFFFFFFF); // Text color on warning backgrounds
  static const Color onWarningContainer = Color(0xFF92400E); // Text color on warning container backgrounds
  static const Color error = Color(0xFFEF4444); // Error color for negative actions and states
  static const Color errorContainer = Color(0xFFFEE2E2); // Error container color
  static const Color onError = Color(0xFFFFFFFF); // Text color on error backgrounds
  static const Color onErrorContainer = Color(0xFF991B1B); // Text color on error container backgrounds
  static const Color info = Color(0xFF3B82F6); // Info color for informational states
  static const Color infoContainer = Color(0xFFDBEAFE); // Info container color
  static const Color onInfo = Color(0xFFFFFFFF); // Text color on info backgrounds
  static const Color onInfoContainer = Color(0xFF1D4ED8); // Text color on info container backgrounds
  // ===== VARIANT COLORS =====
  static const Color background = Color(0xFFFFFFFF); // Main background color
  static const Color surface = Color(0xFFFFFFFF); // Secondary background color for cards and surfaces
  static const Color surfaceVariant = Color(0xFFF8FAFC); // Variant of surface color for different elevations
  static const Color onSurface = Color(0xFF1E293B); // Text color on surface backgrounds
  static const Color onSurfaceVariant = Color(0xFF64748B); // Text color on surface variant backgrounds
  static const Color outline = Color(0xFFE2E8F0); // Outline color for borders and dividers
  static const Color outlineVariant = Color(0xFFCBD5E1); // Variant outline color for subtle borders
  // ===== SPECIAL COLORS =====
  static const Color shadow = Color(0xFF000000); // Shadow color for depth effects
  static const Color scrim = Color(0x99000000); // Scrim color for modal overlays
  static const Color inverseSurface = Color(0xFF1E293B); // Inverse surface color for special cases
  static const Color onInverseSurface = Color(0xFFFFFFFF); // Text color on inverse surfaces
  static const Color inversePrimary = Color(0xFF3B82F6); // Inverse primary color
  static const Color surfaceTint = Color(0xFF1E40AF); // Surface tint color
  // ===== OPACITY VARIANTS =====
  static Color primary80 = primary.withValues(alpha: .8); // Primary color with 80% opacity
  static Color primary60 = primary.withValues(alpha: .6); // Primary color with 60% opacity
  static Color primary40 = primary.withValues(alpha: .4); // Primary color with 40% opacity
  static Color primary20 = primary.withValues(alpha: .2); // Primary color with 20% opacity
  static Color surface80 = surface.withValues(alpha: .8); // Surface color with 80% opacity
  static Color surface60 = surface.withValues(alpha: .6); // Surface color with 60% opacity
  static Color surface40 = surface.withValues(alpha: .4); // Surface color with 40% opacity
  static Color surface20 = surface.withValues(alpha: .2); // Surface color with 20% opacity

  static ColorScheme light() => ColorScheme.fromSeed(
    seedColor: primary,
    brightness: Brightness.light,
  );
  static ColorScheme dark() => ColorScheme.fromSeed(
    seedColor: primary,
    brightness: Brightness.dark,
  );
}
