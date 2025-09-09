import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/book_rating.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';

class SecssionBooKDetails extends StatelessWidget {
  const SecssionBooKDetails({
    super.key,
    required this.width,
    required this.book,
  });
  final double width;
  final BookMoldel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .3,
          ).copyWith(top: 10),
          child: CustomBookpicture(
            imageurl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            book.volumeInfo.authors?[0] ?? 'No Name',
            style: Styles.textstyle30,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Opacity(
            opacity: 0.8,
            child: Text(
              textAlign: TextAlign.center,

              book.volumeInfo.publisher ?? 'repo',
              style: Styles.textstyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsetsGeometry.only(top: 10),
          child: BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            bookRating: book.volumeInfo.averageRating ?? 0,
          ),
        ),
      ],
    );
  }
}
