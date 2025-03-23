import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/config/theme/app_theme.dart';
import 'package:islami_c14_offline_sun/core/routes_manager/routes.dart';

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.home,
    );
  }
}
