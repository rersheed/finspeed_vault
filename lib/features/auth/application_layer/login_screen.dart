import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/forget_password_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/button.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/textfield.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/textlink.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    required this.showRegistrationPage,
  });

  final VoidCallback showRegistrationPage;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        const SizedBox(height: 300),
        const Text(
          "Login to Your Account",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          obsecureText: false,
          textController: phoneController,
          label: "Phone Number",
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          obsecureText: true,
          textController: passwordController,
          label: "Password",
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          onPressed: () {},
          buttonText: "Login",
        ),
        const SizedBox(
          height: 30,
        ),
        LinkComponent(
          function: () => context.goNamed(ForgetPasswordScreen.routeName),
          text: "Forget User / Password ?",
          linkColor: AppColors.greyColor,
        ),
        const SizedBox(
          height: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.fingerprint,
            color: AppColors.whiteColor,
            size: 50,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don’t have an account?",
              style: TextStyle(color: AppColors.greyColor),
            ),
            LinkComponent(
              function: widget.showRegistrationPage,
              text: "Sign Up",
              linkColor: AppColors.whiteColor,
            )
          ],
        ),
      ],
    );
    return Background(
      form: formContent,
    );
  }
}
