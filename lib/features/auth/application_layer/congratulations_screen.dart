import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/bvn_information.dart';
import 'package:finspeed_vault/features/auth/application_layer/toggle_login_register.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets/button.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({super.key});
  static const String routePath = "congratulation";
  static const String routeName = "congratulation";

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        SizedBox(
          height: 0.15.sh,
        ),
        Text(
          "Congratulations",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          "Your account has successfully been set up",
          style: TextStyle(
            color: AppColors.greyColor,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 450.h,
        ),
        CustomButton(
          onPressed: () => context.go(ToggleLoginRegister.routePath),
          buttonText: "Finish",
        ),
      ],
    );
    return Background(
      allowBackButton: true,
      form: formContent,
    );
  }

  void otpEntered(String pin) {
    debugPrint(pin);
    context.goNamed(BVNInformationScreen.routeName);
  }
}
