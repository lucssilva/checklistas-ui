/// CheckListas UI Design System
///
/// A comprehensive Flutter design system implementing Atomic Design principles
/// with an Ecological Succession Metaphor. This package provides structured,
/// scalable, and maintainable UI components following a natural progression
/// from atomic tokens to complete page implementations.
///
/// ## Ecological Succession Metaphor
///
/// 🌱 **Pioneer Species (Layers 1-2)**: Foundation elements that establish the design ecosystem
/// 🌿 **Intermediate Species (Layers 3-4)**: Complex components that build upon the foundation
/// 🌳 **Climax Community (Layers 5-6)**: Mature, fully-realized user experiences
///
/// ## Atomic Design Structure
///
/// 🔬 **01. Atomic Tokens (Pioneer)**: Design tokens, colors, typography, spacing
/// 🧩 **02. Base Elements (Pioneer)**: Fundamental UI building blocks
/// 🧪 **03. Components (Intermediate)**: Composite elements combining base elements
/// 🏗️ **04. Widgets (Intermediate)**: Complex, reusable UI patterns
/// 📐 **05. Wireframes (Climax)**: Structural templates and layouts
/// 🎯 **06. X-Pages (Climax)**: Complete, production-ready page implementations
///
/// ## Quick Start
///
/// ```dart
/// import 'package:checklistas_ui/checklistas_ui.dart';
///
/// void main() {
///   runApp(
///     CheckListasUI(
///       theme: CheckListasTheme.light(),
///       child: MyApp(),
///     ),
///   );
/// }
/// ```
///
/// ## Example Usage
///
/// ```dart
/// // Using atomic tokens
/// Container(
///   padding: CheckListasSpacing.lg,
///   decoration: BoxDecoration(
///     color: CheckListasColors.primary,
///     borderRadius: CheckListasRadius.md,
///   ),
///   child: Text('Hello', style: CheckListasTypography.heading1),
/// )
///
/// // Using base elements
/// CheckListasButton.primary(
///   label: 'Click me',
///   onPressed: () => print('Pressed'),
/// )
///
/// // Using components
/// CheckListasInputField(
///   label: 'Email',
///   placeholder: 'Enter your email',
///   validator: (value) => value?.isEmpty ?? true ? 'Required' : null,
/// )
/// ```
library;

// ===== 01. ATOMIC TOKENS (PIONEER) =====
// Export all design tokens and primitive elements
export 'src/atomic_tokens/animations.dart';
export 'src/atomic_tokens/colors.dart';
export 'src/atomic_tokens/input_formatters.dart';
export 'src/atomic_tokens/radius.dart';
export 'src/atomic_tokens/shadows.dart';
export 'src/atomic_tokens/spacing.dart';
export 'src/atomic_tokens/typography.dart';

// ===== 02. BASE ELEMENTS (PIONEER) =====
// Export fundamental UI building blocks
