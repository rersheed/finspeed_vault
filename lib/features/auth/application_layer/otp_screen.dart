import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/bvn_information.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/textlink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});
  static const String routePath = "otp";
  static const String routeName = "otp";

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        SizedBox(
          height: 0.15.sh,
        ),
        Text(
          "Enter OTP",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        const Text(
          "Enter code sent to your email",
          style: TextStyle(
            color: AppColors.whiteColor,
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        Pinput(
          length: 5,
          pinAnimationType: PinAnimationType.slide,
          controller: otpController,
          onCompleted: otpEntered,
          autofocus: true,
        ),
        SizedBox(
          height: 50.h,
        ),
        const Text(
          "Didn't receive code?",
          style: TextStyle(
            color: AppColors.greyColor,
          ),
        ),
        LinkComponent(
          function: () {},
          text: "Resend",
          linkColor: AppColors.whiteColor,
        )
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
