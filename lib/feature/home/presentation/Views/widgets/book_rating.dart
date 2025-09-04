import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mactabty/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.bookRating,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num bookRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text('$bookRating', style: Styles.textstyle16),
        ),
      ],
    );
  }
}
