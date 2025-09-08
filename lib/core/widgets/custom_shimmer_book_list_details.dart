import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerBookListDetails extends StatelessWidget {
  const CustomShimmerBookListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
       baseColor: Colors.grey[300]!,       // أغمق شوية
      highlightColor: Colors.grey[100]!, // أفتح شوية
      child: SizedBox(
        height: 125,
        child: ListTile(
          leading: Container(
            height:  100, 
             width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.lightBlueAccent,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 10 , bottom: 8, top: 8),
            child: Container(
              height: 20,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:Colors.lightBlueAccent,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 10 , right: 100),
            child: Container(
              height: 20,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:Colors.lightBlueAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
