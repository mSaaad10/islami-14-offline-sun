import 'package:islami_c14_offline_sun/core/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsHandler {
  static late final SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void addSuraIndex(int suraIndex) async {
    //final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentSurasIndex =
        prefs.getStringList("most_recent_suras_index") ?? [];
    if (mostRecentSurasIndex.length >= 6) {
      mostRecentSurasIndex.remove(mostRecentSurasIndex.first);
    }
    if (mostRecentSurasIndex.contains("$suraIndex")) {
      mostRecentSurasIndex.remove("$suraIndex");
      mostRecentSurasIndex.add("$suraIndex");
    } else {
      mostRecentSurasIndex.add("$suraIndex");
      print(mostRecentSurasIndex.length);
    }
    prefs.setStringList("most_recent_suras_index", mostRecentSurasIndex);
  }

  static Future<List<SuraDM>> getMostRecentSuras() async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();

    /// contains most recent suras indexes as string
    List<String> mostRecentSurasIndex =
        prefs.getStringList("most_recent_suras_index") ?? [];

    List<SuraDM> mostRecentSuras = [];

    for (int i = 0; i < mostRecentSurasIndex.length; i++) {
      int index = int.parse(mostRecentSurasIndex[i]);
      mostRecentSuras.add(ConstantManager.suraList[index]);
    }
    return mostRecentSuras.reversed.toList();
  }
}
