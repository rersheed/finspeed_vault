import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/core/utils/show_dialog.dart';
import 'package:finspeed_vault/features/auth/application_layer/fingerprint_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});
  static const String routePath = "pin";
  static const String routeName = "pin";

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  TextEditingController pinController = TextEditingController();
  TextEditingController confirmPinController = TextEditingController();
  bool pinScreen = true;

  @override
  void dispose() {
    pinController.dispose();
    confirmPinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget formContentPin = Column(
      children: [
        SizedBox(
          height: 0.15.sh,
        ),
        Text(
          "Create Transaction Pin",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        Pinput(
          length: 4,
          pinAnimationType: PinAnimationType.slide,
          controller: pinController,
          obscureText: true,
          onCompleted: (pin) {
            debugPrint(pin);
            setState(() {
              pinScreen = false;
            });
          },
          autofocus: true,
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
    Widget formContentConfrimPin = Column(
      children: [
        SizedBox(
          height: 0.15.sh,
        ),
        Text(
          "Confirm Pin",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        Pinput(
          length: 4,
          pinAnimationType: PinAnimationType.slide,
          controller: confirmPinController,
          onCompleted: otpEntered,
          autofocus: true,
          obscureText: true,
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );

    return Background(
      allowBackButton: true,
      form: pinScreen ? formContentPin : formContentConfrimPin,
    );
  }

  void otpEntered(String pin) {
    if (pinController.text.trim() == confirmPinController.text.trim()) {
      context.goNamed(FingerprintScreen.routeName);
    } else {
      DialogManager.showAlertDialog(
        title: "Error",
        content: "Pin and confirm pin must be the same.",
        context: context,
      );
      pinController.clear();
      confirmPinController.clear();
      setState(() {
        pinScreen = true;
      });
    }
  }
}
