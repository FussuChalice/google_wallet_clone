import 'package:flutter/material.dart';
import 'package:google_wallet_clone/database/database.dart';
import 'package:google_wallet_clone/material_theme.dart';
import 'package:google_wallet_clone/screens/screens.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// The main application widget for the Google Wallet clone.
class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  // State variables to manage theme, color, and image settings
  bool useMaterial3 = true;
  ThemeMode themeMode = ThemeMode.system;
  ColorSeed colorSelected = ColorSeed.custom;
  ColorImageProvider imageSelected = ColorImageProvider.leaves;
  ColorScheme? imageColorScheme = const ColorScheme.light();
  ColorSelectionMethod colorSelectionMethod = ColorSelectionMethod.colorSeed;

  /// Determines whether the app should use the light theme based on the current theme mode.
  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return MediaQuery.of(context).platformBrightness == Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  /// Handles changes in brightness preference.
  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  /// Handles changes in the Material version preference.
  void handleMaterialVersionChange() {
    setState(() {
      useMaterial3 = !useMaterial3;
    });
  }

  /// Handles color selection from the ColorSeed enum.
  void handleColorSelect(int value) {
    setState(() {
      colorSelectionMethod = ColorSelectionMethod.colorSeed;
      colorSelected = ColorSeed.values[value];
    });
  }

  /// Handles image selection from the ColorImageProvider enum.
  void handleImageSelect(int value) {
    final String url = ColorImageProvider.values[value].url;
    ColorScheme.fromImageProvider(provider: NetworkImage(url))
        .then((newScheme) {
      setState(() {
        colorSelectionMethod = ColorSelectionMethod.image;
        imageSelected = ColorImageProvider.values[value];
        imageColorScheme = newScheme;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Access the Hive settings box
    var _settingsBox = Hive.box(HiveBoxNames.SETTINGS_BOX);

    return MaterialApp(
      title: "Google Wallet Clone",
      theme: ThemeData(
        colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
            ? colorSelected.color
            : null,
        colorScheme: colorSelectionMethod == ColorSelectionMethod.image
            ? imageColorScheme
            : null,
        useMaterial3: useMaterial3,
        brightness: useLightMode ? Brightness.light : Brightness.dark,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
            ? colorSelected.color
            : imageColorScheme!.primary,
        useMaterial3: useMaterial3,
        brightness: useLightMode ? Brightness.light : Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: _settingsBox.get(HiveKeys.SKIP_WELCOME_PAGE) != true
          ? const WelcomeScreen()
          : const HomeScreen(),
    );
  }
}
