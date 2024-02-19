import 'package:flutter/material.dart';
import 'package:google_wallet_clone/colors.dart';

class EmptyAvatar extends StatelessWidget {
  const EmptyAvatar({super.key});

  final double _avatarSize = 36;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _avatarSize,
      height: _avatarSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(_avatarSize / 2),
        ),
        border: Border.all(color: greyColor, width: 3),
      ),
    );
  }
}
