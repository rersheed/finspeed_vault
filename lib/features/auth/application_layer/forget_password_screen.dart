import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/toggle_login_register.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets/button.dart';
import 'widgets/textfield.dart';
import 'widgets/textlink.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});
  static const String routePath = "forget-password";
  static const String routeName = "forget-password";

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        SizedBox(height: 200.h),
        Text(
          "Reset Password",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const Text(
          "Enter your phone number below to reset your password",
          style: TextStyle(
            color: AppColors.greyColor,
          ),
        ),
        SizedBox(
          height: 120.h,
        ),
        CustomTextField(
          obsecureText: false,
          textController: phoneController,
          label: "Enter Your Phone Number",
        ),
        SizedBox(
          height: 60.h,
        ),
        CustomButton(
          onPressed: () {},
          buttonText: "Change Password",
        ),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Remember your login details?",
              style: TextStyle(
                color: AppColors.greyColor,
              ),
            ),
            LinkComponent(
              function: () => context.go(ToggleLoginRegister.routePath),
              text: "Login",
              linkColor: AppColors.whiteColor,
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
}
