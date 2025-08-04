import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mactabty/const.dart';
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
    return Center(
      child: ZoomIn(
        duration: Duration(seconds: 2),
        child: Image.asset(
          kloge,
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(HomeView.id);
    });
  }
}
