import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookPictureShimmer extends StatelessWidget {
  const CustomBookPictureShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(255, 235, 229, 229),
      highlightColor: const Color.fromARGB(255, 128, 127, 127),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
