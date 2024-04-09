import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/bvn_information.dart';
import 'package:finspeed_vault/features/auth/application_layer/congratulations_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FingerprintScreen extends StatefulWidget {
  const FingerprintScreen({super.key});
  static const String routePath = "fingerprint";
  static const String routeName = "fingerprint";

  @override
  State<FingerprintScreen> createState() => _FingerprintScreenState();
}

class _FingerprintScreenState extends State<FingerprintScreen> {
  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        SizedBox(
          height: 0.15.sh,
        ),
        Text(
          "Fingerprint",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          "Place your finger in fingerprint sensor until the icon completely",
          style: TextStyle(
            color: AppColors.greyColor,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.fingerprint,
            color: AppColors.whiteColor,
            size: 150.sp,
          ),
        ),
        SizedBox(
          height: 200.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () => context.goNamed(CongratulationScreen.routeName),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ],
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
