import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/assets.dart';

class BestSellerItemPicture extends StatelessWidget {
  const BestSellerItemPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(AssetsData.test),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
