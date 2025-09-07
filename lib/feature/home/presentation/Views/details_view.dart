import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mactabty/core/utils/methods/setup_services_locator.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/details_view_body.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_book_cubit.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static String id = "/DetailsView";

  @override
  Widget build(BuildContext context) {
    BookMoldel bookdetails = Get.arguments as BookMoldel;
    return BlocProvider(
      create: (context) =>
          FetchSimilarBookCubit(gitit.get<HomeRepoImpl>()),
      child: DetailsBody(book: bookdetails),
    );
  }
}
