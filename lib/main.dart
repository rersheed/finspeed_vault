import 'package:finspeed_vault/core/utils/colors.dart';
import 'package:finspeed_vault/core/utils/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Finspeed Vault',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blueColor),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
