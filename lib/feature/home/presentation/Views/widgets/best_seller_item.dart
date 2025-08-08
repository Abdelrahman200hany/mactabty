import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mactabty/feature/home/presentation/Views/details_view.dart';

import 'package:mactabty/feature/home/presentation/Views/widgets/best_seller_item_text.dart';
import 'package:mactabty/feature/home/presentation/Views/widgets/bset_seller_item_picture.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(DetailsView.id);
      },
      child: SizedBox(
        height: 125,
        child: Row(children: [BestSellerItemPicture(), BestSellerItemText()]),
      ),
    );
  }
}
