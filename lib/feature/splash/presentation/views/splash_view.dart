import 'package:flutter/material.dart';
import 'package:mactabty/feature/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = "/SplashView";

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      backgroundColor:  Colors.red,
    
    body : const  SplashBody(),
    );
  }
}