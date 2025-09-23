import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookPictureShimmer extends StatelessWidget {
  const CustomBookPictureShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
