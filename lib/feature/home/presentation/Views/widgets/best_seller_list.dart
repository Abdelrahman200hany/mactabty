import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/best_seller_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
    
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(left: 30 ,right:  14, bottom: 8),
          child: BestSellerItem(),
        ),
        childCount: 10,
      ),
    );
  }
}
