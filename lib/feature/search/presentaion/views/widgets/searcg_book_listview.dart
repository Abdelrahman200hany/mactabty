import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/core/widgets/Custom_error_message.dart';
import 'package:mactabty/core/widgets/custom_shimmer_book_list_details.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_seller_book_item.dart';
import 'package:mactabty/feature/search/presentaion/view_model/fetch_search_Book/fetch_search_books_cubit.dart';

class SearchBookListView extends StatelessWidget {
  const SearchBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<FetchSearchBooksCubit, FetchSearchBooksState>(
        builder: (context, state) {
          if (state is FetchSearchBooksSuccess) {
            List<BookMoldel> bookList = BlocProvider.of<FetchSearchBooksCubit>(
              context,
            ).searchBooks;

            return ListView.builder(
              itemCount: bookList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomSellerBookItem(books: bookList[index]),
                );
              },
            );
          } else if (state is FetchSearchBooksFailure) {
            return Center(
              child: CustomErrorMessage(errorMessage: state.errorMessage),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CustomShimmerBookListDetails(),
              ),
              itemCount: 10,
            );
          }
        },
      ),
    );
  }
}
