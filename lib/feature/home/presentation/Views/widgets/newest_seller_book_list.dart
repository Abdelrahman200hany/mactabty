import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/core/widgets/custom_shimmer_book_list_details.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/newest_seller_item.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_newset_books_cubit/fetch_newest_book_cubit.dart';

class NewestSellerBookList extends StatelessWidget {
  const NewestSellerBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBookCubit, FetchNewestBookState>(
      builder: (context, state) {
        if (state is FetchNewestBookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(left: 20, right: 14, bottom: 8),
                child: NewestSellerBookItem(books: state.books[index]),
              ),
              childCount: state.books.length,
            ),
          );
        } else if (state is FetchNewestBookFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errormessage)),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(left: 20, right: 14, bottom: 8),
                child: CustomShimmerBookListDetails(),
              ),
              childCount: 12,
            ),
          );
        }
      },
    );
  }
}
