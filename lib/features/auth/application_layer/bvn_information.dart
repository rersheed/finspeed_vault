import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/features/auth/application_layer/banks_selection.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/background.dart';
import 'package:finspeed_vault/features/auth/application_layer/widgets/bvn_user_text.dart';
import 'package:finspeed_vault/features/auth/data_layer/models/bvn_user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widgets/button.dart';
import 'widgets/textfield.dart';

class BVNInformationScreen extends StatefulWidget {
  const BVNInformationScreen({super.key});
  static const String routePath = "bvn-information";
  static const String routeName = "bvn-information";

  @override
  State<BVNInformationScreen> createState() => _BVNInformationScreenState();
}

class _BVNInformationScreenState extends State<BVNInformationScreen> {
  TextEditingController phoneController = TextEditingController();
  BVNUserDataModel bvnUser = const BVNUserDataModel(
    firstName: "Masum",
    lastName: "Jibril",
    dateOfBirth: "19-08-1990",
    stateOfOrigin: "",
  );

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget formContent = Column(
      children: [
        Container(
          height: 150.h,
          width: 150.h,
          margin: EdgeInsets.only(bottom: 30.h),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/star.png"),
            ),
          ),
        ),
        Text(
          "Match Found!!",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 30.sp,
        ),
        Container(
          color: AppColors.whiteColor.withOpacity(0.2),
          padding: EdgeInsets.all(8.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BVNUserText(
                    text: "First Name",
                  ),
                  BVNUserText(
                    text: "Last Name",
                  ),
                  BVNUserText(
                    text: "Date of Birth",
                  ),
                  BVNUserText(
                    text: "State of Origin",
                  ),
                ],
              ),
              SizedBox(
                width: 30.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BVNUserText(
                    text: bvnUser.firstName,
                  ),
                  BVNUserText(
                    text: bvnUser.lastName,
                  ),
                  BVNUserText(
                    text: bvnUser.dateOfBirth,
                  ),
                  BVNUserText(
                    text: bvnUser.stateOfOrigin,
                  ),
                ],
              ),
            ],
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
          height: 50.h,
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
    context.goNamed(BanksSelectionScreen.routeName);
  }
}
