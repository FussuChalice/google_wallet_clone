import 'package:flutter/material.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';

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
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
