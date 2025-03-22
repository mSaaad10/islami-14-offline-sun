import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/quran/widgets/sura_widget.dart';
import 'package:islami_c14_offline_sun/presentation/screens/quran_details/widgets/sura_content.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  late SuraDetailsArguments arguments;
  String suraContent = '';

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    arguments =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArguments;
    loadSuraContent(arguments.suraIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    /// parallel ???
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.suraNameEn),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AssetsManager.quranDetailsPatternLeft),
                    Image.asset(
                      AssetsManager.quranDetailsPatternRight,
                    ),
                  ],
                ),
                Text(
                  arguments.suraNameAr,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.gold),
                ),
              ],
            ),
            suraContent.isEmpty
                ? Center(child: CircularProgressIndicator())
                : SuraContent(suraContent: suraContent),
            Image.asset(AssetsManager.quranDetailsImage)

            /// taped sura content
          ],
        ),
      ),
    );
  }

  void loadSuraContent(int suraIndex) async {
    String fileContent = await rootBundle
        .loadString("assets/files/suras/$suraIndex.txt"); // /blocking
    var suraLines = fileContent.trim().split("\n");
    List<String> suraLinesFinal = [];
    for (int i = 0; i < suraLines.length; i++) {
      String line = suraLines[i];
      line += "[${i + 1}]";
      suraLinesFinal.add(line);
    }

    setState(() {
      suraContent = suraLinesFinal.join();
    });
  }
}
