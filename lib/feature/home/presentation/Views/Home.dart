import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "/HomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeBody());
  }
}
