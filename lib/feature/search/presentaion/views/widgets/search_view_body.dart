import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';

import 'package:mactabty/feature/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:mactabty/feature/search/presentaion/views/widgets/searcg_book_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CustomSearchTextField(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              'books',
              style: Styles.textstyle20.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SearchBookListView(),
        ],
      ),
    );
  }
}
