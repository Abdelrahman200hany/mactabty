import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mactabty/core/methods/setup_services_locator.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';
import 'package:mactabty/feature/home/presentation/Views/details_view.dart';
import 'package:mactabty/feature/home/presentation/Views/home_view.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_book_cubit.dart';
import 'package:mactabty/feature/search/data/repo/search_repo_impt.dart';
import 'package:mactabty/feature/search/presentaion/view_model/fetch_search_Book/fetch_search_books_cubit.dart';
import 'package:mactabty/feature/search/presentaion/views/search_view.dart';
import 'package:mactabty/feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String khomeView = '/HomeView';
  static String kdetailsView = '/DetailsView';
  static String ksearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: khomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kdetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchSimilarBookCubit(gitit.get<HomeRepoImpl>()),
          child: DetailsView(book: state.extra as BookMoldel),
        ),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchSearchBooksCubit(gitit.get<SearchRepoImpt>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
