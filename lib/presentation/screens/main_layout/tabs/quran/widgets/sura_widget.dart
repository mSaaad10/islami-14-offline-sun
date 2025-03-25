import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/constant.dart';
import 'package:islami_c14_offline_sun/core/prefs_handler/prefs_handler.dart';
import 'package:islami_c14_offline_sun/core/routes_manager/routes.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/most_recent_suras.dart';

class SuraWidget extends StatelessWidget {
  const SuraWidget(
      {super.key, required this.suraDM, required this.mostRecentSurasKey});

  final SuraDM suraDM;

  final GlobalKey<MostRecentSurasState> mostRecentSurasKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PrefsHandler.addSuraIndex(int.parse(suraDM.suraIndex) - 1);

        ///
        Navigator.pushNamed(context, AppRoutes.quranDetails,
            arguments: SuraDetailsArguments(
                mostRecentSurasKey: mostRecentSurasKey,
                suraNameEn: suraDM.suraNameEn,
                suraNameAr: suraDM.suraNameAr,
                versesNumber: suraDM.versesNumber,
                suraIndex: suraDM.suraIndex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AssetsManager.suraNumberBackgroundImage),
              Text(suraDM.suraIndex,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(fontSize: 12))
            ],
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            children: [
              Text(suraDM.suraNameEn,
                  style: Theme.of(context).textTheme.labelMedium),
              Text(suraDM.versesNumber,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontSize: 14)),
            ],
          ),
          const Spacer(),
          Text(suraDM.suraNameAr,
              style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}

class SuraDetailsArguments {
  String suraNameEn;
  String suraNameAr;
  String versesNumber;
  String suraIndex;
  GlobalKey<MostRecentSurasState>? mostRecentSurasKey;

  SuraDetailsArguments(
      {required this.suraNameEn,
      required this.suraNameAr,
      required this.versesNumber,
      required this.suraIndex,
      this.mostRecentSurasKey});
}
