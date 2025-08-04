import 'package:flutter/material.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/custom_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [SliverToBoxAdapter(child: CostomAppBar())],
      ),
    );
  }
}
