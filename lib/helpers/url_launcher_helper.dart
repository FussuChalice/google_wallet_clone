import 'package:url_launcher/url_launcher.dart';

class URLLauncherHelper {
  static Future<void> launchURL(String url) async {
    Uri url = Uri.parse("https://support.google.com/googlepay/answer/9039712");

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
