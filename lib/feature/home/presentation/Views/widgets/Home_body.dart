import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/cart_list.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CostomAppBar()),
            SliverToBoxAdapter(child: CartList()),
            SliverToBoxAdapter(child: Title(title: 'Best Seller')),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 8),
      child: Text(title, textAlign: TextAlign.left, style: Styles.mediumTitle),
    );
  }
}
