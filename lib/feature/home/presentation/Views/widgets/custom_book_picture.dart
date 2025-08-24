import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/assets.dart';

class CustomBookpicture extends StatelessWidget {
  const CustomBookpicture({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(AssetsData.test),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
