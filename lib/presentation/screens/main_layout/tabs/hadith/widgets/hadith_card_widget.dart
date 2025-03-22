import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/core/routes_manager/routes.dart';

class HadithCardWidget extends StatefulWidget {
  final int index;

  const HadithCardWidget({super.key, required this.index});

  @override
  State<HadithCardWidget> createState() => _HadithCardWidgetState();
}

class _HadithCardWidgetState extends State<HadithCardWidget> {
  HadithDM? hadith;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadithFile();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hadithDetails,
            arguments: hadith);
      },
      child: Card(
        margin: const EdgeInsets.only(top: 12),
        color: ColorsManager.gold,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            width: MediaQuery.sizeOf(context).width * 0.8,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsManager.hadithCardBackground))),
            child: hadith == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AssetsManager.quranDetailsPatternLeft,
                                color: ColorsManager.black,
                              ),
                              Image.asset(
                                AssetsManager.quranDetailsPatternRight,
                                color: ColorsManager.black,
                              ),
                            ],
                          ),
                          Text(
                            hadith!.title,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: ColorsManager.black),
                          ),
                        ],
                      ),
                      Text(hadith!.content,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          maxLines: 10,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,

                              // decorationStyle: TextDecorationStyle.dotted,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorsManager.black))
                    ],
                  )),
      ),
    );
  }

  void loadHadithFile() async {
    String key = "assets/files/hadith/h${widget.index}.txt";
    var fileContent = await rootBundle.loadString(key);
    int startLine = 0;
    int endLine = fileContent.indexOf('\n');
    String title = fileContent.substring(startLine, endLine);
    String content = fileContent.substring(endLine + 1);
    hadith = HadithDM(title: title, content: content);
    await Future.delayed(Duration(seconds: 1));
    setState(() {});
  }
}

class HadithDM {
  String title;
  String content;

  HadithDM({required this.title, required this.content});
}
