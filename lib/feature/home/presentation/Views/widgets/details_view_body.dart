import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mactabty/core/utils/styles.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/book_details_action.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_details_appbar.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/seccsion_book_details.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/similar_book_list.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_book_cubit.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({super.key, required this.book});
  final BookMoldel book;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchSimilarBookCubit>(context).fetchSimilarBook(
      category: widget.book.volumeInfo.categories?[0] ?? 'computers',
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomDetailsAppbar(),
              SecssionBooKDetails(width: width, book: widget.book),
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
