import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/constant.dart';
import 'package:islami_c14_offline_sun/core/routes_manager/routes.dart';

class SuraWidget extends StatelessWidget {
  const SuraWidget({super.key, required this.suraDM, required this.index});

  final SuraDM suraDM;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.quranDetails,
            arguments: SuraDetailsArguments(
              suraNameEn: suraDM.suraNameEn,
              suraNameAr: suraDM.suraNameAr,
              versesNumber: suraDM.versesNumber,
              suraIndex: index,
            ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AssetsManager.suraNumberBackgroundImage),
              Text("${index + 1}",
                  style: Theme.of(context).textTheme.labelMedium)
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
  int suraIndex;

  SuraDetailsArguments(
      {required this.suraNameEn,
      required this.suraNameAr,
      required this.versesNumber,
      required this.suraIndex});
}
