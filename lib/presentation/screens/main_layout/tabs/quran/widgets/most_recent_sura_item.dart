import 'package:flutter/material.dart';
import 'package:islami_c14_offline_sun/core/assets_manager.dart';

class MostRecentSuraItem extends StatelessWidget {
  const MostRecentSuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    "Al-Fatiha",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text("الفاتحه",
                      style: Theme.of(context).textTheme.labelLarge),
                  Text("7Verses",
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
    );
  }
}
