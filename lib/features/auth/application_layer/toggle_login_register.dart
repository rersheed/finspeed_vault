import 'package:finspeed_vault/features/auth/application_layer/login_screen.dart';
import 'package:finspeed_vault/features/auth/application_layer/register_screen.dart';
import 'package:flutter/material.dart';

class ToggleLoginRegister extends StatefulWidget {
  const ToggleLoginRegister({super.key});
  static const String routeName = "/auth";

  @override
  State<ToggleLoginRegister> createState() => _ToggleLoginRegisterState();
}

class _ToggleLoginRegisterState extends State<ToggleLoginRegister> {
  bool isLoginPage = true;

  void toggleScreens() {
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginPage) {
      return LoginScreen(showRegistrationPage: toggleScreens);
    } else {
      return RegisterScreen(showLoginPage: toggleScreens);
    }
  }
}
