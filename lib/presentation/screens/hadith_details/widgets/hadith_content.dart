import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';

class HadithContent extends StatelessWidget {
  const HadithContent({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Container(
            child: Text(
          content,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorsManager.gold),
        )),
      )),
    );
  }
}
