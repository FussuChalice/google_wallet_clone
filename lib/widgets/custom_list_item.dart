import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/assets.dart';

/// CustomListItem is a Flutter widget that represents a customizable list item with an image,
/// title, and optional description. It is designed for use in the Google Wallet clone application.
class CustomListItem extends StatelessWidget {
  /// Constructor for CustomListItem.
  ///
  /// Parameters:
  ///   - [key]: An optional key to uniquely identify this widget.
  ///   - [height]: The height of the list item.
  ///   - [image]: The image asset path for the item.
  ///   - [padding]: The padding around the list item.
  ///   - [title]: The title text displayed in the list item.
  ///   - [description]: An optional description text displayed below the title.
  ///   - [onTap]: A callback function that is triggered when the list item is tapped.
  const CustomListItem({
    super.key,
    this.height = 80,
    this.image = Assets.ASSETS_PN_WEBP,
    this.padding = const EdgeInsets.only(top: 15, bottom: 15),
    this.description = "",
    required this.title,
    this.onTap,
  });

  /// The height of the list item.
  final double height;

  /// The image asset path for the item.
  final String image;

  /// The title text displayed in the list item.
  final String title;

  /// An optional description text displayed below the title.
  final String description;

  /// The padding around the list item.
  final EdgeInsets padding;

  /// A callback function that is triggered when the list item is tapped.
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image representing the list item.
              Image.asset(
                image,
                height: 45,
                width: 45,
              ),
              const SizedBox(
                width: 20,
              ),
              // Title and optional description.
              if (description.isEmpty)
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 19),
                )
              else
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(fontSize: 19),
                    ),
                    Text(
                      description,
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.grey[600]),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
