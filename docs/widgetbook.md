# CheckListas UI Widgetbook

This document provides guidance on using and extending the Widgetbook component documentation for the CheckListas UI design system.

## Overview

Widgetbook is an interactive component documentation tool that allows you to:

1. Browse all UI components in isolation
2. Interact with components using knobs
3. Test components across different device sizes
4. Switch between light and dark themes
5. Adjust text scale factor for accessibility testing

Our Widgetbook implementation follows the Atomic Design methodology with an Ecological Succession metaphor:

- **01. Atomic Tokens (Pioneer)** - Design tokens and primitive elements
- **02. Base Elements (Pioneer)** - Fundamental UI building blocks
- **03. Components (Intermediate)** - Composite components
- **04. Widgets (Intermediate)** - Complex UI patterns
- **05. Wireframes (Climax)** - Page templates
- **06. X-Pages (Climax)** - Complete pages

## Running Widgetbook

To run the Widgetbook locally:

```bash
flutter run -d chrome -t lib/widgetbook.dart
```

This will launch the Widgetbook in your Chrome browser. You can also run it on other platforms:

```bash
# Run on macOS
flutter run -d macos -t lib/widgetbook.dart

# Run on iOS Simulator
flutter run -d iPhone -t lib/widgetbook.dart

# Run on Android Emulator
flutter run -d android -t lib/widgetbook.dart
```

## Adding Components to Widgetbook

### Step 1: Create your component

First, create your component following the design system guidelines:

```dart
// lib/src/02_base_elements_pioneer/forms/input.dart
import 'package:flutter/material.dart';
import '../../01_atomic_tokens_pioneer/colors.dart';
import '../../01_atomic_tokens_pioneer/typography.dart';
import '../../01_atomic_tokens_pioneer/radius.dart';

class CheckListasInput extends StatelessWidget {
  final String label;
  final String? placeholder;
  final TextEditingController? controller;
  final bool obscureText;
  
  const CheckListasInput({
    super.key,
    required this.label,
    this.placeholder,
    this.controller,
    this.obscureText = false,
  });
  
  @override
  Widget build(BuildContext context) {
    // Component implementation
  }
}
```

### Step 2: Add to Widgetbook

Update `lib/widgetbook.dart` to include your component:

```dart
// Inside the build method of HotReload class
WidgetbookComponent(
  name: 'Input',
  isInitiallyExpanded: true,
  useCases: [
    WidgetbookUseCase(
      name: 'Default',
      builder: (context) => Center(
        child: CheckListasInput(
          label: context.knobs.string(
            label: 'Label',
            initialValue: 'Email',
          ),
          placeholder: context.knobs.string(
            label: 'Placeholder',
            initialValue: 'Enter your email',
          ),
          obscureText: context.knobs.boolean(
            label: 'Obscure Text',
            initialValue: false,
          ),
        ),
      ),
    ),
    // Add more use cases as needed
  ],
),
```

### Step 3: Using BookMixin (Optional)

For more complex components, you can use the `BookMixin` to organize your use cases:

```dart
// lib/src/02_base_elements_pioneer/forms/input_book.dart
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import '../../../_mixins.dart';
import 'input.dart';

class InputBook with BookMixin {
  static final defaultInput = WidgetbookUseCase(
    name: 'Default',
    builder: (context) => Center(
      child: CheckListasInput(
        label: context.knobs.string(
          label: 'Label',
          initialValue: 'Email',
        ),
        placeholder: context.knobs.string(
          label: 'Placeholder',
          initialValue: 'Enter your email',
        ),
      ),
    ),
  );
  
  static final passwordInput = WidgetbookUseCase(
    name: 'Password',
    builder: (context) => Center(
      child: CheckListasInput(
        label: 'Password',
        placeholder: 'Enter your password',
        obscureText: true,
      ),
    ),
  );
}
```

Then reference it in `widgetbook.dart`:

```dart
WidgetbookComponent(
  name: 'Input',
  isInitiallyExpanded: true,
  useCases: [
    InputBook.defaultInput,
    InputBook.passwordInput,
  ],
),
```

### Step 4: Generate Code

After adding components, regenerate the Widgetbook code:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Best Practices

1. **Organize by Atomic Design**: Place components in the appropriate folder based on their complexity.
2. **Use Knobs**: Make components interactive with knobs for properties.
3. **Test Multiple States**: Create use cases for different component states (default, error, disabled, etc.).
4. **Document Props**: Include clear documentation for all component properties.
5. **Show Usage Examples**: Provide examples of how to use the component in context.

## Deployment

The Widgetbook is automatically deployed to GitHub Pages when changes are pushed to the main branch. You can access it at:

```
https://your-org.github.io/checklistas_ui/
```

PR previews are also available through Netlify for reviewing changes before merging.

## Additional Resources

- [Widgetbook Documentation](https://docs.widgetbook.io/)
- [Atomic Design Methodology](https://atomicdesign.bradfrost.com/table-of-contents/)
- [CheckListas UI Design System Guidelines](../README.md)


