import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mactabty/feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Mactabty());
}

class Mactabty extends StatelessWidget {
  const Mactabty({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashView(),
    );
  }
}
