import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/book_action.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_details_appbar.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/seccsion_book_details.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/similar_book_list.dart';

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
              SecssionBooKDetails(width: width),
              BookAction(),
              Expanded(child: const SizedBox(height: 20)),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text('you can also like', style: Styles.textstyle18),
                ),
              ),

              SimilarBookList(),
            ],
          ),
        ),
      ),
    );
  }
}
