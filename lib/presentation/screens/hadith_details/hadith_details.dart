import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/core/colors_manager.dart';
import 'package:islami_c14_offline_sun/presentation/screens/hadith_details/widgets/hadith_content.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/hadith/widgets/hadith_card_widget.dart';

class HadithDetails extends StatefulWidget {
  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  late HadithDM hadith;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    hadith = ModalRoute.of(context)?.settings.arguments as HadithDM;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  hadith.title,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.gold),
                ),
              ],
            ),
            HadithContent(content: hadith.content),
            Image.asset(AssetsManager.quranDetailsImage)

            /// taped sura content
          ],
        ),
      ),
    );
  }
}
