import 'package:flutter/material.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/cart_list.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/text_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CostomAppBar()),
            SliverToBoxAdapter(child: CartList()),
            SliverToBoxAdapter(child: TextTitle(title: 'Best Seller')),
          ],
        ),
      ),
    );
  }
}
