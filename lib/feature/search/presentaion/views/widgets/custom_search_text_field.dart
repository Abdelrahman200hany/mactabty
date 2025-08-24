import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 12),
      child: TextField(
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          border: buildoutlineinputborder(),
          enabledBorder: buildoutlineinputborder(),
          focusedBorder: buildoutlineinputborder(),

          hintText: 'search for books',
          hintStyle: TextStyle(color: Colors.white, fontSize: 16),
          suffixIcon: Opacity(
            opacity: 0.8,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildoutlineinputborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white, width: 1.5),
    );
  }
}


