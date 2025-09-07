import 'package:flutter/material.dart';

class SearchBookListView extends StatelessWidget {
  const SearchBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            // child: NewestSellerBookItem(),
          );
        },
      ),
    );
  }
}
