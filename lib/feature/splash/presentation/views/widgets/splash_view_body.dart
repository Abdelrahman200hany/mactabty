import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mactabty/feature/home/presentation/Views/Home.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column();
  }

  void navigateToHome() {
  Future.delayed(Duration(seconds: 1), () {
    Get.offNamed(HomeView.id);
  });
}
}


