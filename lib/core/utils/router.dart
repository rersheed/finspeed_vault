import 'package:finspeed_vault/features/auth/application_layer/forget_password_screen.dart';
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
      path: ToggleLoginRegister.routeName,
      builder: (context, state) => const ToggleLoginRegister(),
      routes: [
        //forget password screen
        GoRoute(
          path: ForgetPasswordScreen.routeName,
          builder: (context, state) => const ForgetPasswordScreen(),
        ),
      ],
    ),
  ],
);

final router = _router;
