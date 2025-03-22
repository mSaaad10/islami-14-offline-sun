import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/hadith/hadith.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/pray_times/pray_times.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/quran.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/radio/radio_tab.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/tasbeh/tasbeeh.dart';

class MainLayout extends StatefulWidget {
  MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    Quran(),
    Hadith(),
    Tasbeh(),
    RadioTab(),
    PrayTimes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildIcon(String iconPath, bool isSelected) {
    return isSelected
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            decoration: BoxDecoration(
                color: ColorsManager.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(66)),
            child: ImageIcon(AssetImage(iconPath)))
        : ImageIcon(AssetImage(iconPath));
  }

  Widget buildUnSelectedIcon(String iconPath) {
    return ImageIcon(AssetImage(iconPath));
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          selectedIndex = newIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: buildIcon(AssetsManager.quranIcon, selectedIndex == 0),
              label: "Quran"),
          BottomNavigationBarItem(
              icon: buildIcon(AssetsManager.hadithIcon, selectedIndex == 1),
              label: "Hadith"),
          BottomNavigationBarItem(
              icon: buildIcon(AssetsManager.sebhaIcon, selectedIndex == 2),
              label: "Sebha"),
          BottomNavigationBarItem(
              icon: buildIcon(AssetsManager.radioIcon, selectedIndex == 3),
              label: "Radio"),
          BottomNavigationBarItem(
              icon: buildIcon(AssetsManager.timeIcon, selectedIndex == 4),
              label: "Time"),
        ]);
  }
}
