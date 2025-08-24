import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mactabty/core/utils/styles.dart';

class BestSellerItemText extends StatelessWidget {
  const BestSellerItemText({super.key});

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
                'Hurry potter and the and Goblet of file ',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textstyle20.copyWith(fontFamily: 'GTSectra'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text('Jd pronding  ', style: Styles.textstyle14),
            ),
            BestSellerItemEvaluate(),
          ],
        ),
      ),
    );
  }
}

class BestSellerItemEvaluate extends StatelessWidget {
  const BestSellerItemEvaluate({super.key});

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

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text('4.8', style: Styles.textstyle16),
        ),
        Text(
          '(2035)',
          style: Styles.textstyle14.copyWith(color: Colors.white70),
        ),
      ],
    );
  }
}
