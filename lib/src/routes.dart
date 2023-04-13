import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

Route? routes(RouteSettings settings, SettingsController settingsController) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) {
          return const HomeScreen();
        },
      );

    case SettingsView.routeName:
      return MaterialPageRoute(
        builder: (context) {
          return SettingsView(controller: settingsController);
        },
      );
    default:
      return null;
  }
}
