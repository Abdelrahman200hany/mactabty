import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mactabty/const.dart';
import 'package:mactabty/feature/home/presentation/Views/home_view.dart';
import 'package:mactabty/feature/home/presentation/Views/details_view.dart';
import 'package:mactabty/feature/search/presentaion/views/search_view.dart';
import 'package:mactabty/feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Mactabty());
}

class Mactabty extends StatelessWidget {
  const Mactabty({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimarycolor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      getPages: [
        GetPage(
          name: HomeView.id,
          page: () => const HomeView(),
          transition: Transition.fadeIn,
        ),
        GetPage(name: SplashView.id, page: () => const SplashView()),
        GetPage(name: DetailsView.id, page: () => const DetailsView()),
        GetPage(name: SearchView.id, page: () => const SearchView()),
      ],

      initialRoute: SplashView.id,
    );
  }
}
