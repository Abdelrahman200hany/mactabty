import 'package:flutter/material.dart';
import 'package:mactabty/feature/search/presentaion/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
    static String id = "/SearchViewBody";


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchViewBody()));
  }
}
