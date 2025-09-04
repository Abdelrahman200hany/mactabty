import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/feature_book_list.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/newest_seller_book_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CostomAppBar()),
          SliverToBoxAdapter(child: FeatureBookList()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Text('Newest Seller Book', style: Styles.textstyle18),
            ),
          ),

         NewestSellerBookList (),
        ],
      ),
    );
  }
}
