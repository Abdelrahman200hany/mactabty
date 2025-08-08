import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_details_appbar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [CustomDetailsAppbar()]),
        ),
      ),
    );
  }
}
