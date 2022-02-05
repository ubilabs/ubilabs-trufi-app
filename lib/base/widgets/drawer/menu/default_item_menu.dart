import 'package:flutter/material.dart';
import 'package:trufi_core/base/blocs/localization/trufi_localization_cubit.dart';
import 'package:trufi_core/base/blocs/theme/theme_cubit.dart';
import 'package:trufi_core/base/widgets/drawer/menu/menu_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum DefaultItemsMenu { language, theme }

extension LayerIdsToString on DefaultItemsMenu {
  SimpleMenuItem toMenuItem() {
    final Map<DefaultItemsMenu, SimpleMenuItem> map = {
      DefaultItemsMenu.language: SimpleMenuItem(
          buildIcon: (context) => const Icon(Icons.language),
          name: (context) {
            final List<Locale> values = context
                .findAncestorWidgetOfExactType<MaterialApp>()!
                .supportedLocales
                .toList();
            final currentLocale = Localizations.localeOf(context);
            return DropdownButton<Locale>(
              value: values.firstWhere(
                (value) => value == currentLocale,
              ),
              onChanged: (Locale? value) {
                context.read<TrufiLocalizationCubit>().changeLocale(
                      currentLocale: value,
                    );
              },
              items: values.map((Locale value) {
                return DropdownMenuItem<Locale>(
                  value: value,
                  child: Text(
                    value.toString(),
                  ),
                );
              }).toList(),
            );
          }),
      DefaultItemsMenu.theme: SimpleMenuItem(
          buildIcon: (context) => const Icon(Icons.color_lens),
          name: (context) {
            return DropdownButton<ThemeMode>(
              value: context.watch<ThemeCubit>().state.themeMode,
              onChanged: (ThemeMode? value) {
                context.read<ThemeCubit>().updateTheme(
                      themeMode: value,
                    );
              },
              items: ThemeMode.values.map((ThemeMode value) {
                return DropdownMenuItem<ThemeMode>(
                  value: value,
                  child: Text(
                    value.toString(),
                  ),
                );
              }).toList(),
            );
          }),
    };

    return map[this]!;
  }
}

class SimpleMenuItem extends MenuItem {
  SimpleMenuItem({
    required WidgetBuilder buildIcon,
    required WidgetBuilder name,
    void Function()? onClick,
  }) : super(
          selectedIcon: buildIcon,
          notSelectedIcon: buildIcon,
          name: name,
          onClick: (context, isSelected) {
            if (onClick != null) onClick();
          },
        );
}
