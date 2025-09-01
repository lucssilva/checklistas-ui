import 'package:checklistas_ui/src/atomic_tokens/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppAnimations', () {
    group('Duration tokens', () {
      test('should have correct duration values', () {
        expect(AppAnimations.extraFast, const Duration(milliseconds: 100));
        expect(AppAnimations.fast, const Duration(milliseconds: 200));
        expect(AppAnimations.medium, const Duration(milliseconds: 300));
        expect(AppAnimations.slow, const Duration(milliseconds: 500));
        expect(AppAnimations.extraSlow, const Duration(milliseconds: 700));
      });
      test('should have semantic duration aliases', () {
        expect(AppAnimations.pageTransition, AppAnimations.medium);
        expect(AppAnimations.dialogTransition, AppAnimations.fast);
        expect(AppAnimations.buttonPress, AppAnimations.extraFast);
        expect(AppAnimations.loadingCycle, AppAnimations.slow);
        expect(AppAnimations.toastDisplay, const Duration(seconds: 4));
        expect(AppAnimations.tooltipTransition, AppAnimations.fast);
        expect(AppAnimations.drawerSlide, AppAnimations.medium);
        expect(AppAnimations.tabSwitch, AppAnimations.fast);
        expect(AppAnimations.cardInteraction, AppAnimations.extraFast);
      });
    });
    group('Curve tokens', () {
      test('should have correct curve values', () {
        expect(AppAnimations.standard, Curves.easeInOut);
        expect(AppAnimations.quick, Curves.easeOut);
        expect(AppAnimations.smooth, Curves.easeInOutCubic);
        expect(AppAnimations.bounce, Curves.elasticOut);
        expect(AppAnimations.linear, Curves.linear);
        expect(AppAnimations.decelerate, Curves.decelerate);
      });
    });
    group('Spring animations', () {
      test('should have correct spring constants', () {
        expect(AppAnimations.springTension, 100.0);
        expect(AppAnimations.springFriction, 10.0);
      });
      test('should create spring simulation with default values', () {
        final simulation = AppAnimations.createSpringSimulation();
        expect(simulation, isA<SpringSimulation>());
        expect(simulation.x(0.0), 0.0);
      });
      test('should create spring simulation with custom values', () {
        final simulation = AppAnimations.createSpringSimulation(
          tension: 200.0,
          friction: 20.0,
          start: 0.5,
          end: 2.0,
          velocity: 1.0,
        );
        expect(simulation, isA<SpringSimulation>());
        expect(simulation.x(0.0), 0.5);
      });
    });
    group('Animation controllers', () {
      testWidgets('should create animation controller with default values', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        expect(controller.duration, AppAnimations.medium);
        expect(controller.value, 0.0);
        controller.dispose();
      });
      testWidgets('should create animation controller with custom values', (tester) async {
        final controller = AppAnimations.createController(vsync: tester, duration: AppAnimations.fast, value: 0.5);
        expect(controller.duration, AppAnimations.fast);
        expect(controller.value, 0.5);
        controller.dispose();
      });
      testWidgets('should create curved animation with default curve', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final curvedAnimation = AppAnimations.createCurvedAnimation(controller: controller);
        expect(curvedAnimation.curve, AppAnimations.standard);
        expect(curvedAnimation.parent, controller);
        controller.dispose();
      });
      testWidgets('should create curved animation with custom curve', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final curvedAnimation = AppAnimations.createCurvedAnimation(
          controller: controller,
          curve: AppAnimations.bounce,
          reverseCurve: AppAnimations.quick,
        );
        expect(curvedAnimation.curve, AppAnimations.bounce);
        expect(curvedAnimation.reverseCurve, AppAnimations.quick);
        controller.dispose();
      });
    });
    group('Preset animations', () {
      testWidgets('should create fade in animation', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final fadeAnimation = AppAnimations.createFadeIn(controller: controller);
        expect(fadeAnimation.value, 0.0);
        controller.animateTo(1.0);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 300));
        expect(fadeAnimation.value, 1.0);
        controller.dispose();
      });
      testWidgets('should create slide up animation', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final slideAnimation = AppAnimations.createSlideUp(controller: controller);
        expect(slideAnimation.value, const Offset(0.0, 50.0));
        controller.animateTo(1.0);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 300));
        expect(slideAnimation.value, Offset.zero);
        controller.dispose();
      });
      testWidgets('should create slide up animation with custom distance', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final slideAnimation = AppAnimations.createSlideUp(controller: controller, distance: 100);
        expect(slideAnimation.value, const Offset(0.0, 100.0));
        controller.dispose();
      });
      testWidgets('should create scale animation', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final scaleAnimation = AppAnimations.createScale(controller: controller);
        expect(scaleAnimation.value, 0.8);
        controller.animateTo(1.0);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 300));
        expect(scaleAnimation.value, 1.0);
        controller.dispose();
      });
      testWidgets('should create scale animation with custom values', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final scaleAnimation = AppAnimations.createScale(
          controller: controller,
          begin: 0.5,
          end: 1.5,
        );
        expect(scaleAnimation.value, 0.5);
        controller.dispose();
      });
      testWidgets('should create color transition animation', (tester) async {
        final controller = AppAnimations.createController(vsync: tester);
        final colorAnimation = AppAnimations.createColorTransition(
          controller: controller,
          begin: Colors.red,
          end: Colors.blue,
        );
        expect(colorAnimation.value, Colors.red);
        controller.animateTo(1.0);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 300));
        expect(colorAnimation.value, Colors.blue);
        controller.dispose();
      });
    });
  });
  group('CheckListasAnimationControllerExtensions', () {
    testWidgets('should perform bounceIn animation', (tester) async {
      final controller = AppAnimations.createController(vsync: tester);
      controller.bounceIn();
      expect(controller.value, 0.0);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(controller.value, 1.0);
      controller.dispose();
    });
    testWidgets('should perform fadeIn animation', (tester) async {
      final controller = AppAnimations.createController(vsync: tester);
      controller.fadeIn();
      expect(controller.value, 0.0);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(controller.value, 1.0);
      controller.dispose();
    });
    testWidgets('should perform slideIn animation', (tester) async {
      final controller = AppAnimations.createController(vsync: tester);
      controller.slideIn();
      expect(controller.value, 0.0);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(controller.value, 1.0);
      controller.dispose();
    });
  });
  group('CustomAnimatedContainer', () {
    testWidgets('should render CustomAnimatedContainer widget', (tester) async {
      const beginDecoration = BoxDecoration(color: Colors.red);
      const endDecoration = BoxDecoration(color: Colors.blue);
      const widget = CustomAnimatedContainer(
        duration: Duration(milliseconds: 300),
        begin: beginDecoration,
        end: endDecoration,
        child: Text('Test'),
      );
      await tester.pumpWidget(const MaterialApp(home: Scaffold(body: widget)));
      expect(find.byType(CustomAnimatedContainer), findsOneWidget);
      expect(find.text('Test'), findsOneWidget);
    });
    testWidgets('should animate decoration change', (tester) async {
      const beginDecoration = BoxDecoration(color: Colors.red);
      const endDecoration = BoxDecoration(color: Colors.blue);
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomAnimatedContainer(
              duration: Duration(milliseconds: 300),
              begin: beginDecoration,
              end: endDecoration,
              child: Text('Test'),
            ),
          ),
        ),
      );
      expect(find.byType(TweenAnimationBuilder<Decoration>), findsOneWidget);
      expect(find.byType(DecoratedBox), findsOneWidget);
      await tester.pump(const Duration(milliseconds: 150));
      await tester.pump(const Duration(milliseconds: 150));
    });
    testWidgets('should use custom curve', (tester) async {
      const beginDecoration = BoxDecoration(color: Colors.red);
      const endDecoration = BoxDecoration(color: Colors.blue);
      const widget = CustomAnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceIn,
        begin: beginDecoration,
        end: endDecoration,
        child: Text('Test'),
      );
      await tester.pumpWidget(const MaterialApp(home: Scaffold(body: widget)));
      expect(find.byType(CustomAnimatedContainer), findsOneWidget);
    });
  });
}
