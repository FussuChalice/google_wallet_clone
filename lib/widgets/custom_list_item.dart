import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_wallet_clone/assets.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem(
      {super.key,
      this.height = 80,
      this.image = Assets.ASSETS_PN_WEBP,
      this.padding = const EdgeInsets.only(top: 15, bottom: 15),
      this.description = "",
      required this.title,
      this.onTap});

  final double height;
  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;

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
              Image.asset(
                image,
                height: 45,
                width: 45,
              ),
              const SizedBox(
                width: 20,
              ),
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
                )
            ],
          ),
        ),
      ),
    );
  }
}
