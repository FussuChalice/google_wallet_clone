import 'package:flutter/material.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/colors.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              padding: const EdgeInsets.only(left: 24, right: 24, top: 5),
              child: ListView(
                children: [
                  // SizedBox(
                  //   height: 114,
                  // ),
                  AddBankCardCard(
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TipCard(
                    buttonText: "Learn more about Wallet",
                    title: "Welcome to Google Wallet",
                    description:
                        "Tap to pay, shop with your loyalty\ncards, board a flight and more, all\nwith your phone",
                    sidebarImage: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          Assets.ASSETS_68_PNG,
                          width: 48,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipCard(
                    buttonText: "Lear how to tap to pay",
                    title: "Pay quickly and securely",
                    description:
                        "Tap to pay everywhere Google\nPay is accepted",
                    sidebarBackgroundColor: backgroundTipCardColor,
                    sidebarImage: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          Assets.ASSETS_GOOGLE_PAY_LOGO_PNG,
                          width: 48,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset(Assets.ASSETS_DQ_WEBP),
                      ],
                    ),
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
