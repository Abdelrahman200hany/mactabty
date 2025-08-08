import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_book_picture.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_details_appbar.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomDetailsAppbar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .17).copyWith(top:10),
                child: CustomBookpicture(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
