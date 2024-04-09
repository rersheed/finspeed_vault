import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/otp_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets/button.dart';
import 'widgets/textfield.dart';

class BVNScreen extends StatefulWidget {
  const BVNScreen({super.key});
  static const String routePath = "bvn";
  static const String routeName = "bvn";

  @override
  State<BVNScreen> createState() => _BVNScreenState();
}

class _BVNScreenState extends State<BVNScreen> {
  TextEditingController bvnController = TextEditingController();

  @override
  void dispose() {
    bvnController.dispose();
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
          "Enter Your BVN",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(
          height: 100.h,
        ),
        CustomTextField(
          obsecureText: false,
          textController: bvnController,
          label: "Enter Your BVN",
        ),
        SizedBox(
          height: 0.3.sh,
        ),
        CustomButton(
          onPressed: next,
          buttonText: "Next",
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
    return Background(
      allowBackButton: true,
      form: formContent,
    );
  }

  void next() {
    context.goNamed(OTPScreen.routeName);
  }
}
