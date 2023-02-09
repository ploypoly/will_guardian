import 'package:flutter/material.dart';
import 'package:will_guardian/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: "WILL GUARDIAN",
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeData,
        routerConfig: AppRoute.router,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: const Locale('th', 'TH'),
        supportedLocales: const [
          Locale('th', 'TH'),
        ],
      );
  }
}
