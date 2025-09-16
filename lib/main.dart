import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mactabty/const.dart';
import 'package:mactabty/core/methods/setup_services_locator.dart';
import 'package:mactabty/core/utils/app_router.dart';
import 'package:mactabty/feature/home/data/repos/home_repo_implementaion.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_feature_books_cubit/fetch_feature_cubit.dart';
import 'package:mactabty/feature/home/presentation/manager/fetch_newset_books_cubit/fetch_newest_book_cubit.dart';

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

      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),

        routerConfig: AppRouter.router,
      ),
    );
  }
}
/*

)
*/