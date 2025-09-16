import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mactabty/const.dart';
import 'package:mactabty/core/methods/setup_services_locator.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';
import 'package:mactabty/feature/home/presentation/Views/home_view.dart';
import 'package:mactabty/feature/home/presentation/Views/details_view.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_feature_books_cubit/fetch_feature_cubit.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_newset_books_cubit/fetch_newest_book_cubit.dart';
import 'package:mactabty/feature/search/presentaion/views/search_view.dart';
import 'package:mactabty/feature/splash/presentation/views/splash_view.dart';

void main() {
  setupServicesLocator();
  runApp(const Mactabty());
}

class Mactabty extends StatelessWidget {
  const Mactabty({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FetchFeatureBookCubit(gitit.get<HomeRepoImpl>())
                ..fetchFeatureBook(),
        ),
        BlocProvider(
          create: (context) =>
              FetchNewestBookCubit(gitit.get<HomeRepoImpl>())
                ..fetchNewestBook(),
        ),
      ],

      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        getPages: [
          GetPage(name: HomeView.id, page: () => const HomeView()),
          GetPage(name: SplashView.id, page: () => const SplashView()),
          GetPage(name: DetailsView.id, page: () => const DetailsView()),
          GetPage(name: SearchView.id, page: () => const SearchView()),
        ],

        initialRoute: SplashView.id,
      ),
    );
  }
}
/*

)
*/