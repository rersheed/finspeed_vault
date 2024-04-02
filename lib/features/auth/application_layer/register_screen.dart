import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';

import 'widgets/button.dart';
import 'widgets/textfield.dart';
import 'widgets/textlink.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    super.key,
    required this.showLoginPage,
  });
  final VoidCallback showLoginPage;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController ninController = TextEditingController();
  bool terms = false;

  @override
  void dispose() {
    ninController.dispose();
    super.dispose();
  }

  void checkTerms(bool? value) {
    if (value != null) {
      setState(() {
        terms = value;
      });
    }
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
          height: 50,
        ),
        CustomTextField(
          obsecureText: false,
          textController: ninController,
          label: "Enter Your NIN",
        ),
        const SizedBox(
          height: 250,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: terms,
              onChanged: checkTerms,
              activeColor: AppColors.lightBlueColor,
            ),
            const Text(
              "I agree with ",
              style: TextStyle(color: AppColors.greyColor),
            ),
            LinkComponent(
              function: () {},
              text: "Terms & Conditions",
              linkColor: AppColors.pinkColor,
            ),
          ],
        ),
        CustomButton(
          onPressed: () {},
          buttonText: "Next",
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
              "Already have an account?",
              style: TextStyle(color: AppColors.greyColor),
            ),
            LinkComponent(
              function: widget.showLoginPage,
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
