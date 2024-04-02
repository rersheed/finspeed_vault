import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

import 'background_circle_shadow.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.form});
  final Widget form;

  @override
  Widget build(BuildContext context) {
    Size screen = Screen().size(context);
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: SizedBox(
        height: screen.height,
        width: screen.width,
        child: Stack(
          children: [
            const Positioned(
              top: -150,
              right: -150,
              child: BackgroundCircleShadow(),
            ),
            const Positioned(
              bottom: -100,
              left: -100,
              child: BackgroundCircleShadow(),
            ),
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: form,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
