import 'package:flutter/material.dart';
import 'package:google_wallet_clone/colors.dart';

/// TipCard is a Flutter widget that represents an informational card with a sidebar image,
/// title, description, and a customizable action button. It is designed for use in the
/// Google Wallet clone application.
class TipCard extends StatelessWidget {
  /// Constructor for TipCard.
  ///
  /// Parameters:
  ///   - [key]: An optional key to uniquely identify this widget.
  ///   - [sidebarImage]: A widget representing the sidebar image.
  ///   - [sidebarBackgroundColor]: The background color of the sidebar.
  ///   - [onCloseButtonPressed]: A callback function triggered when the close button is pressed.
  ///   - [title]: The title text displayed on the card.
  ///   - [description]: The description text displayed on the card.
  ///   - [textButtonOnTap]: A callback function triggered when the text button is tapped.
  ///   - [buttonText]: The text displayed on the customizable action button.
  const TipCard({
    super.key,
    this.sidebarImage,
    this.sidebarBackgroundColor,
    this.onCloseButtonPressed,
    required this.title,
    required this.description,
    this.textButtonOnTap,
    required this.buttonText,
  });

  /// A widget representing the sidebar image.
  final Widget? sidebarImage;

  /// The background color of the sidebar.
  final Color? sidebarBackgroundColor;

  /// A callback function triggered when the close button is pressed.
  final VoidCallback? onCloseButtonPressed;

  /// A callback function triggered when the text button is tapped.
  final GestureTapCallback? textButtonOnTap;

  /// The title text displayed on the card.
  final String title;

  /// The description text displayed on the card.
  final String description;

  /// The text displayed on the customizable action button.
  final String buttonText;

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
                        // Title text with bold style.
                        Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        // Description text with specified theme style.
                        Text(
                          description,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Customizable action button.
                        GestureDetector(
                          onTap: textButtonOnTap,
                          child: Text(
                            buttonText,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.fontSize,
                              fontWeight: FontWeight.bold,
                              color: blueButtonColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Close button in the top-right corner.
          Positioned(
            right: 2,
            top: 2,
            child: IconButton(
              onPressed: onCloseButtonPressed ?? () {},
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
