import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/forget_password_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/button.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/textfield.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/textlink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        SizedBox(
          height: 150.h,
        ),
        Text(
          "Finspeed Vault",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 40.sp,
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        Text(
          "Login to Your Account",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        CustomTextField(
          obsecureText: false,
          textController: phoneController,
          label: "Phone Number",
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
          height: 50.h,
        ),
        CustomButton(
          onPressed: () {},
          buttonText: "Login",
        ),
        SizedBox(
          height: 40.h,
        ),
        LinkComponent(
          function: () => context.goNamed(ForgetPasswordScreen.routeName),
          text: "Forget User / Password ?",
          linkColor: AppColors.greyColor,
        ),
        SizedBox(
          height: 30.h,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.fingerprint,
            color: AppColors.whiteColor,
            size: 55.sp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don’t have an account?",
              style: TextStyle(
                color: AppColors.greyColor,
              ),
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
      backgroundImage: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/background_image.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      form: formContent,
    );
  }
}
