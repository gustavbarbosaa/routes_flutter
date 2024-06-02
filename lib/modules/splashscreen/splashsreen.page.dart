import 'package:flutter/material.dart';
import 'package:app_terceira_nota/routers/router.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void goToAuth() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutersUtil.AUTHPAGE);
    });
  }

  @override
  void initState() {
    goToAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((content, constraints) {
        return const Center(
          child: Text("teste"),
        );
      }),
    );
  }
}
