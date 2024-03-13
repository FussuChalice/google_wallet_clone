import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/widgets/widgets.dart';

class AddAPaymentCardScreen extends StatefulWidget {
  const AddAPaymentCardScreen({super.key});

  @override
  State<AddAPaymentCardScreen> createState() => _AddAPaymentCardScreenState();
}

class _AddAPaymentCardScreenState extends State<AddAPaymentCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Open feedback page
            },
            icon: const Icon(
              Icons.feedback_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              Assets.ASSETS_GOOGLE_PAY_LOGO_PNG,
              height: 35,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Add a payment card",
              style: GoogleFonts.poppins(
                fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Select an existing card from your Google Account or add a new credit or debit card",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListItem(
              title: "New credit or debit card",
              image: Assets.ASSETS_TZ_PNG,
              onTap: () {},
            ),
            const Divider(),
            CustomListItem(
              title: "Mastercard •••• 6697",
              description: "Set up tap to pay",
              image: Assets.ASSETS_MASTERCARD_LOGO_SVG_WEBP,
              onTap: () {},
            ),
            const Divider(),
            CustomListItem(
              title: "PayPal",
              description: "Link account to set up tap to pay",
              image: Assets.ASSETS_PAYPAL_LOGO_ICON_147252_PNG,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
