import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/core/constant.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/most_recent_sura_item.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/sura_widget.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsManager.quranTabBackground))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AssetsManager.islamiLogo),
              buildSearchField(),
              const SizedBox(
                height: 20,
              ),
              Text("Most Recently",
                  style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: MediaQuery.sizeOf(context).height * .2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => MostRecentSuraItem(),
                    itemCount: 6,
                  )),
              const SizedBox(
                height: 8,
              ),
              Text("Suras List", style: Theme.of(context).textTheme.labelSmall),
              buildSurasList()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSurasList() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 114,
      separatorBuilder: (context, index) => const Divider(
        color: ColorsManager.white,
        thickness: 1,
        indent: 64,
        endIndent: 64,
      ),
      itemBuilder: (context, index) =>
          SuraWidget(suraDM: ConstantManager.suraList[index], index: index),
    );
  }

  Widget buildSearchField() {
    return SizedBox(
      height: 55,
      child: TextField(
        cursorColor: ColorsManager.ofWhite,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: ColorsManager.ofWhite),
        decoration: InputDecoration(
          labelText: "Sura name",
          prefixIcon: const ImageIcon(
            AssetImage(AssetsManager.searchIcon),
            color: ColorsManager.gold,
          ),
          labelStyle: Theme.of(context).textTheme.labelSmall,
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.gold,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.gold,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.gold,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.red,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
