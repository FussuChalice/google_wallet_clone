import 'package:flutter/material.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/colors.dart';

/// AddBankCardCard is a Flutter widget that displays a card with an image background,
/// an icon, a text message, and an "Add a card" button. It is designed to be used in
/// the Google Wallet clone application.
class AddBankCardCard extends StatelessWidget {
  /// Constructor for AddBankCardCard.
  ///
  /// Parameters:
  ///   - [key]: An optional key to uniquely identify this widget.
  ///   - [onPressed]: A callback function that is triggered when the "Add a card" button is pressed.
  const AddBankCardCard({super.key, this.onPressed});

  /// A callback function that is triggered when the "Add a card" button is pressed.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 197,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.ASSETS_ABCC_WEBP),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon displaying contactless payment symbol in white color.
            const Icon(
              Icons.contactless_outlined,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            // Text message indicating the ability to pay everywhere Google Pay is accepted.
            const Text(
              "Pay everywhere Google Pay is accepted",
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Elevated button prompting users to add a card.
            ElevatedButton(
              onPressed: onPressed,
              child: const Text(
                "Add a card",
                style: TextStyle(color: blueButtonColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
