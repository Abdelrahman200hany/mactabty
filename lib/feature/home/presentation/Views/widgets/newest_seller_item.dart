import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';

import 'package:mactabty/feature/home/presentation/Views/details_view.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/newest_seller_item_text.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';

class NewestSellerBookItem extends StatelessWidget {
  const NewestSellerBookItem({super.key, required this.books});
  final BookMoldel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(DetailsView.id);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookpicture(),
            NewestSellerBookText(book: books),
          ],
        ),
      ),
    );
  }
}
