import 'package:flutter/material.dart';

class CustomDetailsAppbar extends StatelessWidget {
  const CustomDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close, color: Colors.white),
        ),

        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart, color: Colors.white),
        ),
      ],
    );
  }
}
