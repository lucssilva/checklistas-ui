import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'checklistas_ui.dart';

void main() => runApp(
  Widgetbook.material(
    addons: [
      ThemeAddon<ThemeData>(
        themeBuilder: (_, theme, child) => Theme(data: theme, child: child),
        themes: [
          WidgetbookTheme(
            name: 'light',
            data: ThemeData.light().copyWith(colorScheme: AppColors.light()),
          ),
          WidgetbookTheme(
            name: 'dark',
            data: ThemeData.dark().copyWith(colorScheme: AppColors.dark()),
          ),
        ],
      ),
    ],
    directories: [
      WidgetbookFolder(
        name: 'Atomic Tokens',
        isInitiallyExpanded: false,
        children: [],
      ),
      WidgetbookFolder(
        name: 'Base Elements',
        isInitiallyExpanded: false,
        children: [],
      ),
      WidgetbookFolder(
        name: 'Components',
        isInitiallyExpanded: false,
        children: [],
      ),
      WidgetbookFolder(
        name: 'Widgets',
        children: [],
      ),
    ],
  ),
);

mixin BookMixin {
  List<WidgetbookUseCase> usecase(Widget child) => BookHelper.usecase(child);
}

sealed class BookHelper {
  static Widget page(Widget child) => Scaffold(body: Center(child: child));
  static List<WidgetbookUseCase> usecases(List<({String type, Widget widget})> children) => children
      .map(
        (child) => WidgetbookUseCase.child(
          name: child.type,
          child: Scaffold(body: Center(child: child.widget)),
        ),
      )
      .toList();
  static List<WidgetbookUseCase> usecase(Widget child) => BookHelper.usecases([(type: 'default', widget: child)]);
}
