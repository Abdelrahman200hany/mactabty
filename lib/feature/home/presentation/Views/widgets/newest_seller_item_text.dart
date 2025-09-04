import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/book_rating.dart';

class NewestSellerBookText extends StatelessWidget {
  const NewestSellerBookText({super.key, required this.book});
  final BookMoldel book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                book.volumeInfo.authors?[0]?? 'No Name',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textstyle20.copyWith(fontFamily: 'GTSectra'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text( book.volumeInfo.publisher??'repo', style: Styles.textstyle14),
            ),
            NewsetSellerBookEvaluate(),
          ],
        ),
      ),
    );
  }
}

class NewsetSellerBookEvaluate extends StatelessWidget {
  const NewsetSellerBookEvaluate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '108.2 Ep',
            style: Styles.textstyle20.copyWith(fontWeight: FontWeight.w700),
          ),

          BookRating(),
        ],
      ),
    );
  }
}

