import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/toggle_login_register.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/button.dart';
import 'widgets/textfield.dart';
import 'widgets/textlink.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});
  static const String routeName = "/auth/forget-password";

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
        const SizedBox(height: 200),
        const Text(
          "Create Your Account",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Enter your phone number below to reset your password",
          style: TextStyle(color: AppColors.greyColor),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          obsecureText: false,
          textController: phoneController,
          label: "Enter Your Phone Number",
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          onPressed: () {},
          buttonText: "Change Password",
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Remember your login details?",
              style: TextStyle(color: AppColors.greyColor),
            ),
            LinkComponent(
              function: () => context.go(ToggleLoginRegister.routeName),
              text: "Login",
              linkColor: AppColors.whiteColor,
            ),
          ],
        ),
      ],
    );
    return Background(
      form: formContent,
    );
  }
}
