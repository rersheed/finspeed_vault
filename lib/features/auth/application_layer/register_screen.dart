import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/bvn_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/terms_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool terms = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
        SizedBox(height: 200.h),
        Text(
          "Create Your Account",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 70.h,
        ),
        CustomTextField(
          obsecureText: false,
          textController: emailController,
          label: "Email",
        ),
        SizedBox(
          height: 30.h,
        ),
        CustomTextField(
          obsecureText: true,
          textController: passwordController,
          label: "Password",
        ),
        SizedBox(
          height: 30.h,
        ),
        CustomTextField(
          obsecureText: true,
          textController: confirmPasswordController,
          label: "Confirm Password",
        ),
        SizedBox(
          height: 100.h,
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
              style: TextStyle(
                color: AppColors.greyColor,
              ),
            ),
            LinkComponent(
              function: () => context.goNamed(
                TermsAndConditionsScreen.routeName,
              ),
              text: "Terms & Conditions",
              linkColor: AppColors.pinkColor,
            ),
          ],
        ),
        CustomButton(
          onPressed: createAccount,
          buttonText: "Create Account",
        ),
        SizedBox(
          height: 70.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(
                color: AppColors.greyColor,
              ),
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

  createAccount() {
    //do logic
    //after creation move to bvn
    context.goNamed(BVNScreen.routeName);
  }
}
