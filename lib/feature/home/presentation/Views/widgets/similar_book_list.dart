import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/core/utils/Custom_error_message.dart';
import 'package:mactabty/core/utils/progress_indicator.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_book_cubit.dart';

class SimilarBookList extends StatelessWidget {
  const SimilarBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBookCubit, FetchSimilarBookState>(
      builder: (context, state) {
        if (state is FetchSimilarBookSuccess) {
          return SizedBox(
            height: 175,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 8, bottom: 30),
                  child: CustomBookpicture(
                    imageurl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (state is FetchSimilarBookFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return CustomProgressIndicator();
        }
      },
    );
  }
}
