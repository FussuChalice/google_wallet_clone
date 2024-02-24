import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/material_theme.dart';

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
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Text(
                "To make Wallet even more useful, you can use your passes across Google to see thinga like flight updates from boarding passes? loyalty card point balances, and event notifications in Maps, Calendar, and more",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                            text: "Manage yout Google Pay experience ",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
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
                onPressed: () {},
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

// appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.close, color: Colors.black),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       )
