import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Enumeration indicating the method of color selection.
enum ColorSelectionMethod {
  colorSeed,
  image,
}

/// Enumeration of predefined color seeds.
enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink),
  custom('Custom', Color(0xff00668B));

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}

/// Enumeration of predefined color image providers.
enum ColorImageProvider {
  leaves('Leaves',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png'),
  peonies('Peonies',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png'),
  bubbles('Bubbles',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png'),
  seaweed('Seaweed',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_4.png'),
  seagrapes('Sea Grapes',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_5.png'),
  petals('Petals',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_6.png');

  const ColorImageProvider(this.label, this.url);
  final String label;
  final String url;
}

/// Sets the system UI overlay style based on the current theme.
void setSystemUIOverlayStyle(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:
        Theme.of(context).scaffoldBackgroundColor, // Navigation bar color
    statusBarColor:
        Theme.of(context).scaffoldBackgroundColor, // Status bar color
    statusBarIconBrightness: Theme.of(context).brightness == Brightness.light
        ? Brightness.dark
        : Brightness.light,
  ));
}
