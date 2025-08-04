import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mactabty/const.dart';
import 'package:mactabty/feature/home/presentation/Views/Home.dart';
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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimarycolor,
      ),
      getPages: [
        GetPage(
          name: HomeView.id,
          page: () => const HomeView(),
          transition: Transition.fadeIn,
        ),
        GetPage(name: SplashView.id, page: () => const SplashView()),
      ],

      initialRoute: SplashView.id,
    );
  }
}
