import 'package:flutter/cupertino.dart';
import 'package:islami_c14_offline_sun/presentation/screens/hadith_details/hadith_details.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/main_layout.dart';
import 'package:islami_c14_offline_sun/presentation/screens/onboarding/onboarding.dart';
import 'package:islami_c14_offline_sun/presentation/screens/quran_details/quran_details.dart';
import 'package:islami_c14_offline_sun/presentation/screens/splash/splash.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String quranDetails = '/quranDetails';
  static const String hadithDetails = '/hadithDetails';
  static const String onboarding = '/introduction';
  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const Splash(),
    home: (_) => MainLayout(),
    quranDetails: (_) => QuranDetails(),
    hadithDetails: (_) => HadithDetails(),
    onboarding: (_) => Onboarding(),
  };
}
