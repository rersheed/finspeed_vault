import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'background_circle_shadow.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.form,
    this.backgroundImage = const BoxDecoration(),
    this.allowBackButton = false,
  });
  final Widget form;
  final BoxDecoration backgroundImage;
  final bool allowBackButton;

  @override
  Widget build(BuildContext context) {
    Widget body = Container(
      height: 1.sh,
      width: 1.sw,
      decoration: backgroundImage,
      child: Stack(
        children: [
          Positioned(
            top: -0.2.sh,
            right: -0.4.sw,
            child: const BackgroundCircleShadow(
              color: Color.fromARGB(255, 73, 12, 204),
            ),
          ),
          Positioned(
            bottom: -100.sp,
            left: -100.sp,
            child: const BackgroundCircleShadow(),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: form,
              ),
            ),
          ),
        ],
      ),
    );
    return allowBackButton
        ? Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.whiteColor,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor: AppColors.blueColor,
            ),
            backgroundColor: AppColors.blueColor,
            body: body,
          )
        : Scaffold(
            backgroundColor: AppColors.blueColor,
            body: body,
          );
  }
}
