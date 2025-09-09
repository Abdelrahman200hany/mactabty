import 'package:flutter/material.dart';
import 'package:mactabty/const.dart';
import 'package:mactabty/core/utils/styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.text,
    required this.textcolor,
    required this.backgroundcolor,
    this.borderRadius,
    this.onPressed,
  });

  final Color textcolor;
  final String text;
  final Color backgroundcolor;
  final BorderRadius? borderRadius;
  
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,

        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),

        child: Text(
          text,
          style: Styles.textstyle18.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
            fontFamily: gTSectra,
          ),
        ),
      ),
    );
  }
}
