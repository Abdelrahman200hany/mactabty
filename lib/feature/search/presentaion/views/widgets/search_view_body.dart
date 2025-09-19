import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/core/utils/styles.dart';
import 'package:mactabty/feature/search/presentaion/view_model/fetch_search_Book/fetch_search_books_cubit.dart';

import 'package:mactabty/feature/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:mactabty/feature/search/presentaion/views/widgets/searcg_book_listview.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<FetchSearchBooksCubit>(
      context,
    ).fetchSearchBooks(searchCatory: 'flutter');
  }

  final TextEditingController searchController = TextEditingController();
  String? searchValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CustomSearchTextField(
            onPressed: () {
              BlocProvider.of<FetchSearchBooksCubit>(
                context,
              ).fetchSearchBooks(searchCatory: searchValue ?? 'flutter');
            },
            searchController: searchController,
            onSubmitted: (value) {
              searchValue = value;
              BlocProvider.of<FetchSearchBooksCubit>(
                context,
              ).fetchSearchBooks(searchCatory: searchValue ?? 'flutter');
            },
          ),
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
