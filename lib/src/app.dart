import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'settings/settings_controller.dart';
import 'screens/home_screen.dart';
import 'app_theme.dart';

/// The Widget that configures your application.
class LocalizationTrial extends StatelessWidget {
  const LocalizationTrial({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          restorationScopeId: 'app',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context).appTitle,
          theme: AppTheme.light(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  default:
                    return const HomeScreen();
                }
              },
            );
          },
        );
      },
    );
  }
}
