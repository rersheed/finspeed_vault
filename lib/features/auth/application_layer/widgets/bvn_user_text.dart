import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BVNUserText extends StatelessWidget {
  const BVNUserText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 15,
        ),
      ),
    );
  }
}
