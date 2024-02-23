import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor:
          Theme.of(context).scaffoldBackgroundColor, // navigation bar color
      statusBarColor:
          Theme.of(context).scaffoldBackgroundColor, // status bar color
      statusBarIconBrightness: Theme.of(context).brightness == Brightness.light
          ? Brightness.dark
          : Brightness.light,
    ));

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
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Learn how ",
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold)),
                                  const Text(
                                    "passes in your Wallet will",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                "appear across Google",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Terms ",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.fontSize,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Text(
                              "and ",
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.fontSize,
                              ),
                            ),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.fontSize,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: Text("View Wallet"),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
