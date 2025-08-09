import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/best_seller_item_text.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/book_action.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_details_appbar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomDetailsAppbar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .2,
                ).copyWith(top: 10),
                child: CustomBookpicture(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text('Abdelrahman Hany ', style: Styles.textstyle30),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Opacity(
                  opacity: 0.8,
                  child: Text(
                    'sadadfax',
                    style: Styles.textstyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.only(top: 10),
                child: BookRating(mainAxisAlignment: MainAxisAlignment.center),
              ),
              BookAction(),
            ],
          ),
        ),
      ),
    );
  }
}

