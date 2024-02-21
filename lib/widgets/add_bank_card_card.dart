import 'package:flutter/material.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/colors.dart';

class AddBankCardCard extends StatelessWidget {
  const AddBankCardCard({super.key, this.onPressed});

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
            const Icon(
              Icons.contactless_outlined,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
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
