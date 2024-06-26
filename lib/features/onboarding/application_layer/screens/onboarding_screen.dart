import 'package:finspeed_vault/features/auth/application_layer/toggle_login_register.dart';
import 'package:finspeed_vault/features/onboarding/application_layer/screens/intro1_screen.dart';
import 'package:finspeed_vault/features/onboarding/application_layer/screens/intro2_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: controller,
            children: const [
              IntroOneScreen(),
              IntroTwoScreen(),
            ],
          ),

          //dot indicator
          Container(
            alignment: const Alignment(-0.5, 0.90),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 2,
                    effect: const ExpandingDotsEffect(),
                  ),
                  ElevatedButton(
                    onPressed: () => context.go(ToggleLoginRegister.routePath),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    ),
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // skip button
        ],
      ),
    );
  }
}
