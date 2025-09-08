import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/core/widgets/Custom_error_message.dart';
import 'package:mactabty/core/widgets/custom_circular_progress.dart';
import 'package:mactabty/core/widgets/custom_shimmer_book_picture.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_feature_books_cubit/fetch_feature_cubit.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_feature_books_cubit/fetch_featured_state.dart';

class FeatureBookList extends StatelessWidget {
  const FeatureBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeatureBookCubit, FetchFeatureBookState>(
      builder: (context, state) {
        if (state is GetFeatureBookSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,

                itemCount: state.booklist.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookpicture(
                    imageurl:
                        state
                            .booklist[index]
                            .volumeInfo
                            .imageLinks
                            ?.thumbnail ??
                        '',
                  ),
                ),
              ),
            ),
          );
        }
        if (state is GetFeatureBookFaulire) {
          return CustomErrorMessage(errorMessage: state.errormessage);
        } else {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,

                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: const CustomBookPictureShimmer(),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
