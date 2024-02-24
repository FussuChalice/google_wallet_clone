import 'package:url_launcher/url_launcher.dart';

/// `URLLauncherHelper` is a utility class that provides a method to launch a URL using the
/// `url_launcher` package in Flutter. This class simplifies the process of opening a URL
/// in the default browser on the user's device.
class URLLauncherHelper {
  /// Asynchronously launches the specified URL in the default browser on the user's device.
  ///
  /// The [url] parameter is a String representing the URL to be launched.
  ///
  /// Throws an [Exception] if the URL launching is unsuccessful.
  static Future<void> launchURL(String url) async {
    // Parsing the URL to ensure it is in a valid format
    Uri parsedUrl = Uri.parse(url);

    // Attempting to launch the URL using the url_launcher package
    if (!await launchUrl(parsedUrl)) {
      // Throw an exception if the launch attempt fails
      throw Exception('Could not launch $url');
    }
  }
}
