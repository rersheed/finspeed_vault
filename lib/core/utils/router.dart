import 'package:finspeed_vault/features/darshboard/application_layer/screens/dashboard_screen.dart';
import 'package:finspeed_vault/features/onboarding/application_layer/screens/onboarding_screen.dart';
import 'package:finspeed_vault/home_screen.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [
    // HomeScreen
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const OnboardingScreen(),
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

    //
  ],
);

final router = _router;
