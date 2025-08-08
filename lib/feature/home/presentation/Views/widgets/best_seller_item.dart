import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mactabty/core/utils/assets.dart';
import 'package:mactabty/core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          BestSellerItemPicture(),
          BestSellerItemText(),
        ],
      ),
    );
  }
}

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

          Row(
            children: [
              Icon(FontAwesomeIcons.solidStar, color: const Color.fromARGB(255, 253, 246, 178)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text('4.8', style: Styles.textstyle16),
              ),
              Text(
                '(2035)',
                style: Styles.textstyle14.copyWith(color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
