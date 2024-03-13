import 'package:flutter/material.dart';
import 'package:google_wallet_clone/assets.dart';
import 'package:google_wallet_clone/colors.dart';

/// CustomAvatar is a Flutter widget that displays a circular avatar with an optional image.
/// It is designed to be used in the Google Wallet clone application.
class CustomAvatar extends StatelessWidget {
  /// Constructor for CustomAvatar.
  ///
  /// Parameters:
  ///   - [key]: An optional key to uniquely identify this widget.
  ///   - [onTap]: A callback function that is triggered when the avatar is tapped.
  ///   - [avatarImage]: An optional image asset path for the avatar. If not provided,
  ///     a default avatar image is used.
  const CustomAvatar({super.key, this.onTap, this.avatarImage});

  /// A callback function that is triggered when the avatar is tapped.
  final GestureTapCallback? onTap;

  /// An optional image asset path for the avatar. If not provided, a default avatar image is used.
  final String? avatarImage;

  // Size of the circular avatar.
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
            // If avatarImage is provided, use that image; otherwise, use the default avatar image.
            image: AssetImage(avatarImage ?? Assets.ASSETS_EC_PNG),
          ),
        ),
      ),
    );
  }
}
