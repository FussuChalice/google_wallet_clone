import 'package:flutter/material.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/colors.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key, this.onTap, this.avatarImage});

  final GestureTapCallback? onTap;
  final String? avatarImage;

  final double _avatarSize = 32;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.all(
        Radius.circular(_avatarSize / 2),
      ),
      child: Ink(
        height: _avatarSize,
        width: _avatarSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(_avatarSize / 2),
          ),
          color: greyColor,
          image: DecorationImage(
            image: AssetImage(avatarImage ?? Assets.ASSETS_EC_PNG),
          ),
        ),
      ),
    );
  }
}
