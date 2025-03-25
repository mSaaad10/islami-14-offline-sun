import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/constant.dart';
import 'package:islami_c14_offline_sun/core/prefs_handler/prefs_handler.dart';
import 'package:islami_c14_offline_sun/core/routes_manager/routes.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/sura_widget.dart';

class MostRecentSuras extends StatefulWidget {
  const MostRecentSuras({super.key});

  @override
  State<MostRecentSuras> createState() => MostRecentSurasState();
}

class MostRecentSurasState extends State<MostRecentSuras> {
  List<SuraDM> mostRecentSuras = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMostRecentSuras();
  }

  void getMostRecentSuras() async {
    mostRecentSuras = await PrefsHandler.getMostRecentSuras();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return mostRecentSuras.isEmpty
        ? Container()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Most Recently",
                  style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildMostRecentCard(suraDM: mostRecentSuras[index]),
                  itemCount: mostRecentSuras.length,
                ),
              ),
            ],
          );
  }

  Widget buildMostRecentCard({required SuraDM suraDM}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.quranDetails,
            arguments: SuraDetailsArguments(
              suraNameEn: suraDM.suraNameEn,
              suraNameAr: suraDM.suraNameAr,
              versesNumber: suraDM.versesNumber,
              suraIndex: suraDM.suraIndex,
            ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      suraDM.suraNameEn,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(suraDM.suraNameAr,
                        style: Theme.of(context).textTheme.labelLarge),
                    Text(suraDM.versesNumber,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontSize: 14,
                            )),
                  ],
                ),
              ),
              Expanded(child: Image.asset(AssetsManager.mostRecentSuraImage))
            ],
          ),
        ),
      ),
    );
  }
}
