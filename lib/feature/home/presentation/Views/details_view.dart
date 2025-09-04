import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static String id = "/DetailsView";

  @override
  Widget build(BuildContext context) {
    BookMoldel bookdetails = Get.arguments as BookMoldel;
    return DetailsBody(book: bookdetails);
  }
}
