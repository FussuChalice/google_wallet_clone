import 'package:flutter/material.dart';
import 'package:google_wallet_clone/colors.dart';

class TipCard extends StatelessWidget {
  const TipCard(
      {super.key,
      this.sidebarImage,
      this.sidebarBackgroundColor,
      this.onCloseButtonPressed,
      required this.title,
      required this.description,
      this.textButtonOnTap,
      required this.buttonText});

  final Widget? sidebarImage;
  final Color? sidebarBackgroundColor;
  final VoidCallback? onCloseButtonPressed;
  final GestureTapCallback? textButtonOnTap;
  final String title, description, buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          width: 1,
          color: greyColor,
        ),
        color: sidebarBackgroundColor,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: sidebarImage,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: textButtonOnTap,
                        child: Text(
                          buttonText,
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.bodySmall?.fontSize,
                            fontWeight: FontWeight.bold,
                            color: blueButtonColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          Positioned(
            right: 2,
            top: 2,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
