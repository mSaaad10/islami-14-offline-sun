import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/core/constant.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/most_recent_suras.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/sura_widget.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  String searchKey = '';
  List<SuraDM> filteredList = [];
  GlobalKey<MostRecentSurasState> mostRecentSurasKey =
      GlobalKey<MostRecentSurasState>();

  @override
  Widget build(BuildContext context) {
    print("Ana da5alt elbuild");
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
              MostRecentSuras(
                key: mostRecentSurasKey,
              ),
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

  void getFilteredList() {
    filteredList = ConstantManager.suraList
        .where((suraDM) =>
            suraDM.suraNameEn.toLowerCase().contains(searchKey.toLowerCase()) ||
            suraDM.suraNameAr.contains(searchKey))
        .toList();
    print(filteredList.length);
  }

  Widget buildSurasList() {
    if (searchKey.isEmpty) {
      filteredList = ConstantManager.suraList;
    } else {
      getFilteredList();
    }

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: filteredList.length,
      separatorBuilder: (context, index) => const Divider(
        color: ColorsManager.white,
        thickness: 1,
        indent: 64,
        endIndent: 64,
      ),
      itemBuilder: (context, index) => SuraWidget(
        suraDM: filteredList[index],
        mostRecentSurasKey: mostRecentSurasKey,
      ),
    );
  }

  Widget buildSearchField() {
    return SizedBox(
      height: 55,
      child: TextField(
        onChanged: (value) {
          searchKey = value;
          print(searchKey);
          setState(() {});
        },
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
