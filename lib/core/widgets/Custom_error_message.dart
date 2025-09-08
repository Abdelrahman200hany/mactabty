import 'package:flutter/widgets.dart';
import 'package:mactabty/core/utils/styles.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Styles.textstyle20);
  }
}
