import 'package:flutter/material.dart';
import 'package:mactabty/core/utils/styles.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 8),
      child: Text(title, textAlign: TextAlign.left, style: Styles.mediumTitle),
    );
  }
}
