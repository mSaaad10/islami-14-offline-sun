import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/prefs_handler/prefs_handler.dart';
import 'package:islami_c14_offline_sun/islami_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsHandler.init();
  runApp(const IslamiApp());
}

/// Git & Github
/// Onboarding feature
/// Search feature
/// most recent suras
///
///
///
/// feat : registeration , login  1 , 2 , 3
///
/// vcs -> mangage version
/// control work flow
/// ///
