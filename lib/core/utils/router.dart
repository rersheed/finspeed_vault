import 'package:finspeed_vault/features/auth/application_layer/banks_selection.dart';
import 'package:finspeed_vault/features/auth/application_layer/bvn_information.dart';
import 'package:finspeed_vault/features/auth/application_layer/bvn_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/congratulations_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/fingerprint_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/forget_password_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/otp_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/pin_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/terms_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/toggle_login_register.dart';
import 'package:finspeed_vault/features/darshboard/application_layer/screens/dashboard_screen.dart';
import 'package:finspeed_vault/features/onboarding/application_layer/screens/onboarding_screen.dart';
import 'package:finspeed_vault/home_screen.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  initialLocation: OnboardingScreen.routeName,
  routes: [
    // HomeScreen
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
      routes: [
        //dashboard screen
        GoRoute(
          path: DashboardScreen.routeName,
          builder: (context, state) => const DashboardScreen(),
        ),
      ],
    ),
    // OnboardingScreen
    GoRoute(
      path: OnboardingScreen.routeName,
      builder: (context, state) => const OnboardingScreen(),
    ),

    //all auth pages
    GoRoute(
      name: "auth",
      path: ToggleLoginRegister.routePath,
      builder: (context, state) => const ToggleLoginRegister(),
      routes: [
        //forget password screen
        GoRoute(
          name: ForgetPasswordScreen.routeName,
          path: ForgetPasswordScreen.routePath,
          builder: (context, state) => const ForgetPasswordScreen(),
        ),
        //term and conditions screen
        GoRoute(
          name: TermsAndConditionsScreen.routeName,
          path: TermsAndConditionsScreen.routePath,
          builder: (context, state) => const TermsAndConditionsScreen(),
        ),
        //enter BVN screen
        GoRoute(
          name: BVNScreen.routeName,
          path: BVNScreen.routePath,
          builder: (context, state) => const BVNScreen(),
        ),
        //enter OTP screen
        GoRoute(
          name: OTPScreen.routeName,
          path: OTPScreen.routePath,
          builder: (context, state) => const OTPScreen(),
        ),
        //BVN Information Screen
        GoRoute(
          name: BVNInformationScreen.routeName,
          path: BVNInformationScreen.routePath,
          builder: (context, state) => const BVNInformationScreen(),
        ),
        //Bank Selection Screen
        GoRoute(
          name: BanksSelectionScreen.routeName,
          path: BanksSelectionScreen.routePath,
          builder: (context, state) => const BanksSelectionScreen(),
        ),
        //Pin
        GoRoute(
          name: PinScreen.routeName,
          path: PinScreen.routePath,
          builder: (context, state) => const PinScreen(),
        ),
        //Fingerprint
        GoRoute(
          name: FingerprintScreen.routeName,
          path: FingerprintScreen.routePath,
          builder: (context, state) => const FingerprintScreen(),
        ),
        //Congratulation
        GoRoute(
          name: CongratulationScreen.routeName,
          path: CongratulationScreen.routePath,
          builder: (context, state) => const CongratulationScreen(),
        ),
      ],
    ),
  ],
);

final router = _router;
