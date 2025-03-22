import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';
import 'package:islami_c14_offline_sun/presentation/screens/main_layout/tabs/hadith/widgets/hadith_card_widget.dart';

class Hadith extends StatelessWidget {
  const Hadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsManager.hadithTabBackground))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 1, child: Image.asset(AssetsManager.islamiLogo)),
            Expanded(
              flex: 4,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: double.infinity,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 0.7,
                  aspectRatio: 1 / 1,
                ),
                items: List.generate(
                  50,
                  (index) => index + 1,
                ).map(
                  (index) {
                    return HadithCardWidget(index: index);
                  },
                ).toList(),
              ),
            ),
          ],
        ));
  }
}
