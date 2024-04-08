import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/card1.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 0.6.sh,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 40.sp,
                    ),
                    children: const [
                      TextSpan(
                        text: "Manage all your Bank Accounts from ",
                      ),
                      TextSpan(
                        text: "Finspeed Vault ",
                        style: TextStyle(
                          color: AppColors.pinkColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "A convenient way to manage your money securely from mobile device.",
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 20.sp,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
