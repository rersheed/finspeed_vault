import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:flutter/material.dart';

class IntroTwoScreen extends StatelessWidget {
  const IntroTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Stack(
        children: [
          Container(
            width: screen.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/card2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: screen.height * 0.57,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 45,
                    ),
                    children: [
                      TextSpan(text: "A loan for every dream with "),
                      TextSpan(
                        text: "mobile banking ",
                        style: TextStyle(color: AppColors.pinkColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "A convenient way to manage your money securely from mobile device.",
                  style: TextStyle(color: AppColors.greyColor, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
