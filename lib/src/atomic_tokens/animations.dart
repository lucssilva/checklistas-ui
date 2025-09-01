// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

mixin AppAnimations {
  // ===== DURATION TOKENS =====
  static const Duration extraFast = Duration(milliseconds: 100); // Extra Fast - 100ms (immediate feedback)
  static const Duration fast = Duration(milliseconds: 200); // Fast - 200ms (quick interactions)
  static const Duration medium = Duration(milliseconds: 300); // Medium - 300ms (standard transitions)
  static const Duration slow = Duration(milliseconds: 500); // Slow - 500ms (deliberate transitions)
  static const Duration extraSlow = Duration(milliseconds: 700); // Extra Slow - 700ms (smooth, noticeable transitions
  // ===== CURVE TOKENS =====
  static const Curve standard = Curves.easeInOut; // Standard easing curve for most animations
  static const Curve quick = Curves.easeOut; // Quick easing for fast interactions
  static const Curve smooth = Curves.easeInOutCubic; // Smooth easing for slow, deliberate transitions
  static const Curve bounce = Curves.elasticOut; // Bounce effect for playful interactions
  static const Curve linear = Curves.linear; // Linear motion for predictable animations
  static const Curve decelerate = Curves.decelerate; // Decelerate for natural stopping
  // ===== COMMON ANIMATIONS =====
  static const Duration pageTransition = medium; // Page transition duration
  static const Duration dialogTransition = fast; // Dialog/modal transition duration
  static const Duration buttonPress = extraFast; // Button press feedback duration
  static const Duration loadingCycle = slow; // Loading animation duration (one cycle)
  static const Duration toastDisplay = Duration(seconds: 4); // Toast/snackbar display duration
  static const Duration tooltipTransition = fast; // Tooltip show/hide duration
  static const Duration drawerSlide = medium; // Drawer/sidebar slide duration
  static const Duration tabSwitch = fast; // Tab switch transition duration
  static const Duration cardInteraction = extraFast; // Card hover/selection duration
  // ===== SPRING ANIMATIONS =====
  static const double springTension = 100.0; // Spring tension for bounce effects
  static const double springFriction = 10.0; // Spring friction for bounce effects
  /// Creates a spring simulation for natural bounce effects
  static SpringSimulation createSpringSimulation({
    double tension = 100.0,
    double friction = 10.0,
    double start = 0.0,
    double end = 1.0,
    double velocity = 0.0,
  }) => SpringSimulation(SpringDescription(mass: 1.0, stiffness: tension, damping: friction), start, end, velocity);

  // ===== ANIMATION CONTROLLERS =====
  /// Creates a standard animation controller
  static AnimationController createController({
    required TickerProvider vsync,
    Duration duration = medium,
    double? value,
  }) => AnimationController(vsync: vsync, duration: duration, value: value);

  /// Creates a curved animation
  static CurvedAnimation createCurvedAnimation({
    required AnimationController controller,
    Curve curve = standard,
    Curve? reverseCurve,
  }) => CurvedAnimation(parent: controller, curve: curve, reverseCurve: reverseCurve);

  // ===== PRESET ANIMATIONS =====
  /// Fade in animation
  static Animation<double> createFadeIn({required AnimationController controller, Curve curve = quick}) =>
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: controller, curve: curve));

  /// Slide up animation
  static Animation<Offset> createSlideUp({
    required AnimationController controller,
    double distance = 50.0,
    Curve curve = smooth,
  }) => Tween<Offset>(
    begin: Offset(0.0, distance),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: controller, curve: curve));

  /// Scale animation
  static Animation<double> createScale({
    required AnimationController controller,
    double begin = 0.8,
    double end = 1.0,
    Curve curve = bounce,
  }) => Tween<double>(begin: begin, end: end).animate(CurvedAnimation(parent: controller, curve: curve));

  /// Color transition animation
  static Animation<Color?> createColorTransition({
    required AnimationController controller,
    required Color begin,
    required Color end,
    Curve curve = standard,
  }) => ColorTween(begin: begin, end: end).animate(CurvedAnimation(parent: controller, curve: curve));
}

extension CheckListasAnimationControllerExtensions on AnimationController {
  /// Plays a bounce-in animation
  Future<void> bounceIn() async {
    value = 0.0;
    animateTo(1.0, curve: AppAnimations.bounce);
  }

  /// Plays a fade-in animation
  Future<void> fadeIn() async {
    value = 0.0;
    animateTo(1.0, curve: AppAnimations.quick);
  }

  /// Plays a slide-in animation
  Future<void> slideIn() async {
    value = 0.0;
    animateTo(1.0, curve: AppAnimations.smooth);
  }
}

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({
    super.key,
    required this.duration,
    required this.child,
    this.curve = AppAnimations.standard,
    required this.begin,
    required this.end,
  });

  final Duration duration;
  final Widget child;
  final Curve curve;
  final Decoration begin;
  final Decoration end;

  @override
  build(context) => TweenAnimationBuilder<Decoration>(
    duration: duration,
    curve: curve,
    tween: DecorationTween(begin: begin, end: end),
    builder: (context, decoration, child) => DecoratedBox(decoration: decoration, child: child),
    child: child,
  );
}
