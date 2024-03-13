import 'package:flutter/material.dart';
import 'package:google_wallet_clone/application.dart';
import 'package:google_wallet_clone/database/database.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  var settingsBox = await Hive.openBox(HiveBoxNames.SETTINGS_BOX);

  if (settingsBox.get(HiveKeys.SKIP_WELCOME_PAGE) != true) {
    initDefaultHiveValues(settingsBox);
  }

  runApp(const Application());
}

void initDefaultHiveValues(Box<dynamic> settingsBox) {
  settingsBox.put(HiveKeys.PERSONALIZATION_WITHIN_WALLET, true);
  settingsBox.put(HiveKeys.USE_PASSES_ACROSS_GOOGLE, true);
  settingsBox.put(HiveKeys.PERSONALIZATION_ACROSS_GOOGLE, false);
  settingsBox.put(HiveKeys.SKIP_WELCOME_PAGE, false);
}
