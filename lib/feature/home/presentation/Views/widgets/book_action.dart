import 'package:flutter/material.dart';
import 'package:mactabty/core/widgets/custom_buttom.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 37 , horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButtom(
              text: '99.3 Ep',
              textcolor: Colors.black,
              backgroundcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),

           Expanded(
             child: CustomButtom(
              text: 'review',
              textcolor: Colors.white,
              backgroundcolor: const Color(0xffee8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
                       ),
           ),
        ],
      ),
    );
  }
}
