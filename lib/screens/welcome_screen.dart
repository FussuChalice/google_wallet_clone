import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/database/database.dart';
import 'package:google_wallet_clone/helpers/url_launcher_helper.dart';
import 'package:google_wallet_clone/material_theme.dart';
import 'package:google_wallet_clone/screens/screens.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 18,
              top: 44,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wallet",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                CustomAvatar(
                  onTap: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Column(
                children: [
                  Text(
                    "Get fast, secure access to your everydat essentials",
                    style: GoogleFonts.poppins(fontSize: 29),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tap to pay everywhere Google Pay is accepted, shop with your loyalty cards? board a flight, and more, all with just your phone",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Lottie.asset(
                    Assets.ASSETS_KZ_JSON,
                    repeat: false,
                    width: 280,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 270,
                    child: InkWell(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LearnHowPassesInYourWalletScreen()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Learn how ",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              const TextSpan(
                                text: "passes in your Wallet will",
                              ),
                              const TextSpan(
                                text: "appear across Google",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      URLLauncherHelper.launchURL(
                          "https://support.google.com/googlepay/answer/9039712");
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodySmall?.fontSize,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                        children: [
                          TextSpan(
                            text: "Terms",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );

                      Hive.box(HiveBoxNames.SETTINGS_BOX)
                          .put(HiveKeys.SKIP_WELCOME_PAGE, true);
                    },
                    child: const Text("View Wallet"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
