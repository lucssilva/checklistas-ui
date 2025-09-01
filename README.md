# CheckListas UI Design System 📱

A comprehensive Flutter design system implementing **Atomic Design** principles with an **Ecological Succession Metaphor**. This package provides a structured, scalable, and maintainable approach to UI development.

## 🌱 Ecological Succession Metaphor

Inspired by ecological succession, our design system follows a natural progression:

- **🌱 Pioneer Species (Layers 1-2)**: Foundation elements that establish the design ecosystem
- **🌿 Intermediate Species (Layers 3-4)**: Complex components that build upon the foundation
- **🌳 Climax Community (Layers 5-6)**: Mature, fully-realized user experiences

## 🧬 Atomic Design Structure

### 1. 🔬 Atomic Tokens (Pioneer) `01_atomic_tokens_pioneer/`
Foundation design tokens and primitive elements that form the basis of all UI components.

**Inspired by Design Tokens** but expanded to include Flutter-specific objects:
- **Colors**: Brand colors, semantic colors, opacity variations
- **Typography**: Text styles, font families, line heights
- **Spacing**: Margins, paddings, component spacing
- **Radii**: Border radius values for different use cases
- **Shadows**: Elevation and shadow definitions
- **Animations**: Duration, easing curves, transition patterns
- **Input Formatters**: Text input validation and formatting
- **Icons**: Standardized iconography system

### 2. 🧩 Base Elements (Pioneer) `02_base_elements_pioneer/`
Fundamental UI building blocks inspired by HTML elements.

**Atomic Design Atoms** with web tribute:
- **Typography Elements**: Headings, paragraphs, links, lists
- **Form Elements**: Inputs, buttons, checkboxes, radio buttons
- **Interactive Elements**: Links, tooltips, badges
- **Layout Elements**: Containers, dividers, spacers
- **Media Elements**: Images, icons, avatars

### 3. 🧪 Components (Intermediate) `03_components_intermediate/`
Composite elements formed by combining base elements.

**Atomic Design Molecules** with Web Components tribute:
- **Form Components**: Input groups, select dropdowns, date pickers
- **Navigation Components**: Breadcrumbs, pagination, tabs
- **Feedback Components**: Progress bars, loading indicators, alerts
- **Data Display**: Cards, tables, charts, statistics
- **Layout Components**: Sidebars, headers, footers

### 4. 🏗️ Widgets (Intermediate) `04_widgets_intermediate/`
Complex, reusable UI patterns and organisms.

**Atomic Design Organisms** with Windows widgets tribute:
- **Form Widgets**: Complete registration forms, login screens
- **Dashboard Widgets**: Analytics panels, user profile cards
- **Navigation Widgets**: Side navigation, top bars, breadcrumbs
- **Content Widgets**: Article cards, media galleries, comment sections
- **Modal Widgets**: Dialog boxes, confirmation prompts, wizards

### 5. 📐 Wireframes (Climax) `05_wireframes_climax/`
Structural templates that define layout and composition.

**Atomic Design Templates** with wireframing tribute:
- **Page Templates**: Standard page layouts and grid systems
- **Component Templates**: Reusable layout patterns
- **Responsive Templates**: Mobile-first, tablet, desktop layouts
- **Content Templates**: Article layouts, product pages, dashboards

### 6. 🎯 X-Pages (Climax) `06_xpages_climax/`
Complete, production-ready page implementations.

**Atomic Design Pages** with X-prefix hierarchy:
- **X1-Authentication**: Login, register, password reset pages
- **X2-Onboarding**: Welcome flows, tutorials, setup wizards
- **X3-Dashboard**: Main application interfaces and analytics
- **X4-Content**: Article pages, product details, user profiles
- **X5-Settings**: Configuration pages, preferences, account management

## 🚀 Quick Start

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  checklistas_ui:
    git:
      url: https://github.com/your-org/checklistas_ui.git
      ref: main
```

### Basic Usage

```dart
import 'package:checklistas_ui/checklistas_ui.dart';

// Initialize the design system
void main() {
  runApp(
    CheckListasUI(
      theme: CheckListasTheme.light(),
      child: MyApp(),
    ),
  );
}

// Use atomic components
class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Use atomic tokens
          Container(
            padding: CheckListasSpacing.lg,
            decoration: BoxDecoration(
              color: CheckListasColors.primary,
              borderRadius: CheckListasRadius.md,
            ),
            child: Text(
              'Welcome',
              style: CheckListasTypography.heading1,
            ),
          ),

          // Use base elements
          CheckListasButton.primary(
            label: 'Get Started',
            onPressed: () => print('Button pressed'),
          ),

          // Use components
          CheckListasInputField(
            label: 'Email',
            placeholder: 'Enter your email',
            validator: (value) => value?.isEmpty ?? true ? 'Required' : null,
          ),

          // Use widgets
          CheckListasCard(
            title: 'User Profile',
            content: Column(
              children: [
                CheckListasAvatar(
                  imageUrl: 'https://example.com/avatar.jpg',
                  size: CheckListasAvatarSize.large,
                ),
                SizedBox(height: CheckListasSpacing.md),
                Text('John Doe', style: CheckListasTypography.body1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
```

## 📁 Project Structure

```
lib/
├── checklistas_ui.dart              # Main library export
├── src/
│   ├── 01_atomic_tokens_pioneer/
│   │   ├── colors.dart              # Color tokens
│   │   ├── typography.dart          # Text styles
│   │   ├── spacing.dart             # Spacing tokens
│   │   ├── radius.dart              # Border radius
│   │   ├── shadows.dart             # Shadow definitions
│   │   ├── animations.dart          # Animation tokens
│   │   ├── input_formatters.dart    # Text formatters
│   │   └── icons.dart               # Icon system
│   │
│   ├── 02_base_elements_pioneer/
│   │   ├── typography/
│   │   │   ├── heading.dart         # H1-H6 elements
│   │   │   ├── paragraph.dart       # P element
│   │   │   └── text_link.dart       # A element
│   │   ├── forms/
│   │   │   ├── button.dart          # Button element
│   │   │   ├── input.dart           # Input element
│   │   │   └── checkbox.dart        # Checkbox element
│   │   └── layout/
│   │       ├── container.dart       # Div element
│   │       └── divider.dart         # Hr element
│   │
│   ├── 03_components_intermediate/
│   │   ├── forms/
│   │   │   ├── input_group.dart     # Form groups
│   │   │   ├── select_dropdown.dart # Select components
│   │   │   └── date_picker.dart     # Date selection
│   │   ├── feedback/
│   │   │   ├── progress_bar.dart    # Progress indicators
│   │   │   ├── loading_spinner.dart # Loading states
│   │   │   └── alert_banner.dart    # Alert messages
│   │   └── data/
│   │       ├── data_card.dart       # Data display cards
│   │       └── statistic_display.dart # Stat components
│   │
│   ├── 04_widgets_intermediate/
│   │   ├── forms/
│   │   │   ├── login_form.dart      # Complete login forms
│   │   │   └── registration_form.dart # Registration flows
│   │   ├── dashboard/
│   │   │   ├── analytics_panel.dart # Dashboard widgets
│   │   │   └── user_profile_card.dart # Profile displays
│   │   └── modals/
│   │       ├── confirmation_dialog.dart # Dialog widgets
│   │       └── wizard_flow.dart     # Multi-step flows
│   │
│   ├── 05_wireframes_climax/
│   │   ├── templates/
│   │   │   ├── page_layout.dart     # Page templates
│   │   │   ├── grid_system.dart     # Layout grids
│   │   │   └── responsive_layout.dart # Responsive templates
│   │   └── patterns/
│   │       ├── card_layout.dart     # Card patterns
│   │       └── list_layout.dart     # List patterns
│   │
│   └── 06_xpages_climax/
│       ├── x1_authentication/
│       │   ├── login_page.dart      # X1-01: Login page
│       │   ├── register_page.dart   # X1-02: Registration
│       │   └── forgot_password_page.dart # X1-03: Password reset
│       ├── x2_onboarding/
│       │   ├── welcome_page.dart    # X2-01: Welcome
│       │   └── tutorial_page.dart   # X2-02: Tutorial
│       └── x3_dashboard/
│           ├── dashboard_page.dart  # X3-01: Main dashboard
│           └── analytics_page.dart  # X3-02: Analytics view
│
└── test/
    ├── 01_atomic_tokens_pioneer/    # Token tests
    ├── 02_base_elements_pioneer/    # Element tests
    ├── 03_components_intermediate/  # Component tests
    └── 04_widgets_intermediate/     # Widget tests
```

## 🎨 Design Philosophy

### Atomic Design Principles
- **Atoms**: Fundamental building blocks (colors, fonts, spacing)
- **Molecules**: Simple combinations of atoms (buttons, inputs)
- **Organisms**: Complex combinations of molecules (forms, cards)
- **Templates**: Page layouts without specific content
- **Pages**: Specific instances of templates with real content

### Ecological Succession Metaphor
- **Pioneer Layer**: Foundation elements that colonize new design spaces
- **Intermediate Layer**: Established patterns that build upon pioneers
- **Climax Layer**: Mature ecosystems representing complete user experiences

### Flutter-Specific Adaptations
- **Stateless Widgets**: For atomic tokens and base elements
- **Stateful Widgets**: For interactive components and widgets
- **Inherited Widgets**: For theme and configuration propagation
- **Composition over Inheritance**: Widget composition patterns

## 🛠️ Development

### Code Standards
- **120-character line length** with vertical ruler guide
- **Flexible typing** in override methods for cleaner code
- **Comprehensive linting** with 60+ rules enabled
- **Documentation requirements** for all public APIs

### Testing Strategy
```dart
// Unit tests for atomic tokens
void main() {
  test('CheckListasColors.primary should be correct hex value', () {
    expect(CheckListasColors.primary.value, 0xFF1E40AF);
  });
}

// Widget tests for components
void main() {
  testWidgets('CheckListasButton should render correctly', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CheckListasButton.primary(
          label: 'Test Button',
          onPressed: () {},
        ),
      ),
    );

    expect(find.text('Test Button'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
```

### Package Commands
```bash
# Development & Testing
flutter test                   # Run unit and widget tests
flutter analyze               # Code analysis and linting
flutter format --set-exit-if-changed lib  # Check code formatting

# Design System
flutter run lib/widgetbook.dart # Run Widgetbook locally
flutter build web --target lib/widgetbook.dart --release  # Build Widgetbook

# Package Validation
flutter pub get               # Install dependencies
flutter pub deps              # Show dependency tree
flutter pub publish --dry-run # Validate for publishing

# Documentation
flutter pub run dartdoc       # Generate API documentation
flutter pub run build_runner build  # Generate code (Widgetbook, etc.)

# Publishing
flutter pub publish           # Publish to pub.dev
```

## 📚 Documentation

### Interactive Component Documentation (Widgetbook)
The design system includes an interactive component documentation powered by Widgetbook:

```bash
# Run locally
flutter run lib/widgetbook.dart

# Build for web deployment
flutter build web --target lib/widgetbook.dart
```

**Features:**
- 🎨 **Interactive Components**: Click, hover, and interact with components
- 🎭 **Theme Switching**: Light/dark mode themes
- 📱 **Multi-Device Preview**: Test on different screen sizes
- 🔍 **Component Search**: Quickly find specific components
- 📊 **Knobs & Controls**: Adjust component properties in real-time
- 📖 **Usage Examples**: Code snippets and implementation guides

For detailed instructions on using and extending Widgetbook, see our [Widgetbook Documentation](docs/widgetbook.md).

### API Documentation
Comprehensive API documentation is available via DartDoc:
```bash
flutter pub run dartdoc
```

### Design System Documentation
- **Atomic Design Guide**: Understanding the layered approach
- **Component Library**: Interactive component documentation
- **[Architecture Diagrams](docs/diagrams/)**: Visual system documentation
- **Usage Examples**: Real-world implementation examples
- **Migration Guide**: Updating from existing design systems

## 🚀 CI/CD Pipeline

The project uses GitHub Actions for automated testing, validation, and deployment of this Flutter design system package:

### Workflows

#### 1. **CI Pipeline** (`.github/workflows/ci.yml`)
- ✅ **Multi-platform testing**: Ubuntu, macOS, Windows
- ✅ **Code analysis**: Flutter analyze and format checking
- ✅ **Test coverage**: Unit and widget tests with coverage reporting
- ✅ **Package validation**: Ensures package can be consumed by other apps
- ✅ **Widgetbook build**: Generates interactive component documentation
- ✅ **Automated publishing**: To pub.dev on main branch

#### 2. **Widgetbook Deployment** (`.github/workflows/deploy_widgetbook.yml`)
- ✅ **GitHub Pages deployment**: Live Widgetbook at `username.github.io/repo-name`
- ✅ **Triggered by CI success**: Only deploys when tests pass
- ✅ **Automatic updates**: On pushes to main branch

#### 3. **PR Preview** (`.github/workflows/widgetbook.yml`)
- ✅ **Netlify previews**: Interactive component testing for pull requests
- ✅ **Automatic comments**: Links to preview in PR discussions
- ✅ **Fast feedback**: Quick validation of UI changes

### Getting Started with CI/CD

1. **Enable GitHub Pages** in repository settings:
   - Go to Settings → Pages
   - Set source to "GitHub Actions"

2. **Add repository secrets** (Settings → Secrets and variables → Actions):
   - `PUB_CREDENTIALS`: For pub.dev publishing (required for publishing)
   - `NETLIFY_SITE_ID`: For PR previews (optional)
   - `NETLIFY_AUTH_TOKEN`: For PR previews (optional)

3. **Push to main branch** to trigger full CI/CD pipeline

### Package-Specific CI/CD Features

Since this is a **Flutter package** (not an app), the CI/CD pipeline includes:

- **Package Validation**: Tests that the package can be properly consumed by other Flutter apps
- **Dependency Analysis**: Ensures all dependencies are correctly specified
- **Import Testing**: Validates that all public APIs work as expected
- **No Platform Builds**: Skips APK/AAB/iOS/Web builds (not needed for packages)
- **Component Showcase**: Builds interactive documentation automatically

## 🤝 Contributing

### Development Workflow
1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/your-feature`
3. **Follow** the atomic design structure
4. **Add tests** for new components
5. **Update documentation** as needed
6. **Submit** a pull request

### Component Development Guidelines

#### Adding New Atomic Tokens
```dart
// lib/src/01_atomic_tokens_pioneer/colors.dart
class CheckListasColors {
  // Add new color token
  static const Color success = Color(0xFF10B981);

  // Add opacity variations
  static const Color successLight = Color(0xFFD1FAE5);
}
```

#### Creating Base Elements
```dart
// lib/src/02_base_elements_pioneer/forms/button.dart
class CheckListasButton extends StatelessWidget {
  const CheckListasButton.primary({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: CheckListasColors.primary,
        foregroundColor: CheckListasColors.onPrimary,
        padding: EdgeInsets.symmetric(
          horizontal: CheckListasSpacing.lg,
          vertical: CheckListasSpacing.md,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CheckListasRadius.md),
        ),
      ),
      child: Text(
        label,
        style: CheckListasTypography.button,
      ),
    );
  }
}
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Brad Frost** for the original Atomic Design methodology
- **Flutter Team** for the amazing framework
- **Ecological Succession** concept from environmental science
- **Material Design** for foundational design principles

---

## 📁 Complete Project Structure

```
checklistas_ui/
├── 📚 docs/diagrams/           # Mermaid documentation
│   ├── atomic_design_concept.md   # Main concept diagram
│   ├── example_*.md             # Implementation examples
│   └── README.md                # Documentation guide
│
├── 🔧 .github/workflows/       # CI/CD pipelines
│   ├── ci.yml                   # Main CI pipeline
│   ├── deploy_widgetbook.yml    # Widgetbook deployment
│   └── widgetbook.yml           # Component previews
│
├── 📱 .cursor/                  # IDE configuration
│   ├── rules/                   # Coding guidelines
│   ├── settings.json            # Editor preferences
│   └── tasks.json               # Development tasks
│
├── 🎨 lib/                      # Design system source
│   ├── checklistas_ui.dart      # Main exports
│   ├── widgetbook.dart          # Component catalog
│   └── src/
│       ├── 01_atomic_tokens_pioneer/     # Foundation tokens
│       │   ├── colors.dart              # Color system
│       │   ├── typography.dart          # Text styles
│       │   ├── spacing.dart             # Spacing tokens
│       │   ├── radius.dart              # Border radius
│       │   ├── shadows.dart             # Elevation system
│       │   └── animations.dart          # Motion tokens
│       │
│       ├── 02_base_elements_pioneer/    # HTML-like elements
│       │   ├── forms/
│       │   │   ├── button.dart          # Interactive buttons
│       │   │   └── input.dart           # Text inputs
│       │   └── layout/
│       │       └── container.dart       # Layout containers
│       │
│       ├── 03_components_intermediate/  # Complex components
│       │   ├── forms/                   # Form components
│       │   └── feedback/                # Status components
│       │
│       ├── 04_widgets_intermediate/     # Complete widgets
│       │   └── forms/                   # Full form widgets
│       │
│       ├── 05_wireframes_climax/        # Layout templates
│       │   ├── templates/               # Page templates
│       │   └── patterns/                # Layout patterns
│       │
│       └── 06_xpages_climax/            # Production pages
│           ├── x1_authentication/       # Auth pages
│           ├── x2_onboarding/           # Welcome flows
│           └── x3_dashboard/            # Main interfaces
│
└── 🧪 test/                    # Component tests
    ├── 01_atomic_tokens_pioneer/
    ├── 02_base_elements_pioneer/
    └── ...
```

## 🌟 Key Features

- ✅ **Atomic Design**: 6-layer hierarchical structure
- ✅ **Ecological Metaphor**: Pioneer → Intermediate → Climax
- ✅ **Interactive Documentation**: Widgetbook component catalog
- ✅ **CI/CD Automation**: GitHub Actions with GitHub Pages
- ✅ **Cross-Platform**: Android, iOS, Web support
- ✅ **Whitelabel Ready**: Easy branding customization
- ✅ **Comprehensive Testing**: Unit, widget, and integration tests
- ✅ **Visual Documentation**: Mermaid diagrams for all concepts

## 🎯 Quick Setup

```bash
# 1. Clone and setup package
git clone <repository-url>
cd checklistas_ui
flutter pub get

# 2. Validate package can be consumed
flutter pub deps

# 3. Run component catalog
flutter run lib/widgetbook.dart

# 4. Run tests
flutter test

# 5. Validate for publishing
flutter pub publish --dry-run
```

## 🔗 Integration with Main App

```yaml
# In your main app's pubspec.yaml
dependencies:
  checklistas_ui:
    git:
      url: https://github.com/your-org/checklistas_ui.git
      ref: main

# In your main.dart
import 'package:checklistas_ui/checklistas_ui.dart';

void main() {
  runApp(CheckListasUI(
    theme: CheckListasTheme.light(),
    child: MyApp(),
  ));
}
```

---

**Built with ❤️ using Atomic Design, Flutter, and modern development practices**