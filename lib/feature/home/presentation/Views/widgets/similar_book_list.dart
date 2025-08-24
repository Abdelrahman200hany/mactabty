import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8, bottom: 10),
            child: CustomBookpicture(),
          );
        },
      ),
    );
  }
}
