import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/assets.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3, right: 12, left: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 70, width: 85),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
