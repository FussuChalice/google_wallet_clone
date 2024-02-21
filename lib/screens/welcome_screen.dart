import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/colors.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Lottie.asset(
                      Assets.ASSETS_KZ_JSON,
                      repeat: false,
                      width: 300,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
