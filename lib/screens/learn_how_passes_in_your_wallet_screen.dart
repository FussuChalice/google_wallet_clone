import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/helpers/url_launcher_helper.dart';
import 'package:google_wallet_clone/material_theme.dart';
import 'package:google_wallet_clone/screens/screens.dart';

class LearnHowPassesInYourWalletScreen extends StatefulWidget {
  const LearnHowPassesInYourWalletScreen({super.key});

  @override
  State<LearnHowPassesInYourWalletScreen> createState() =>
      _LearnHowPassesInYourWalletScreenState();
}

class _LearnHowPassesInYourWalletScreenState
    extends State<LearnHowPassesInYourWalletScreen> {
  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            leading: IconButton(
              icon: const Icon(Icons.close, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverList.list(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("How passes in Wallet appear across Google",
                  style: GoogleFonts.poppins(fontSize: 28)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Text(
                "To make Wallet even more useful, you can use your passes across Google to see thinga like flight updates from boarding passes? loyalty card point balances, and event notifications in Maps, Calendar, and more",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "G",
                    style: GoogleFonts.poppins(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                    child: Text(
                      "Passes yo've already saved to Google Pay will automatically be added to Wallet and will appear across Google",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.security,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontSize: 16,
                          ),
                          children: [
                            const TextSpan(
                                text:
                                    "You can control whether all passes appear across Google in "),
                            TextSpan(
                              text: "Manage passes data ",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const ManagePassesDataScreen()));
                                },
                            ),
                            const TextSpan(
                              text:
                                  "or control them individually in the pass details",
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.credit_card_rounded),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 16,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                "Control where and how your payment methods appear across Google on ",
                          ),
                          TextSpan(
                            text: "Manage your Google Pay experience ",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                URLLauncherHelper.launchURL(
                                    "https://myactivity.google.com/?continue=https://myactivity.google.com/product/gpay?utm_source%3Dgoogle-account%26utm_medium%3Dweb%26utm_campaign%3Dgpay-card");
                              },
                          ),
                          const TextSpan(
                            text: "in My Activity",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 120, top: 40),
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Got it"),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
          ]),
        ],
      ),
    );
  }
}
