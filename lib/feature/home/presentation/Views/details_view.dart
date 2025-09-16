import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/data/models/book_moldel/book_moldel.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.book});
  final BookMoldel book;

  @override
  Widget build(BuildContext context) {
    return DetailsBody(book: book);
  }
}
/*


*/