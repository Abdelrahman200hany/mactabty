import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/Best_seller_list.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/cart_list.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CostomAppBar()),
          SliverToBoxAdapter(child: CartList()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Text('Best Seller', style: Styles.textstyle18),
            ),
          ),

          BestSellerSliverList(),
        ],
      ),
    );
  }
}
