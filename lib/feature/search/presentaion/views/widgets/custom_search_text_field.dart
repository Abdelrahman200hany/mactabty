import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mactabty/feature/search/data/state_servies/state_servies.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.searchController,
    this.onSubmitted,
    this.onPressed,
  });

  final TextEditingController searchController;
  final void Function(String)? onSubmitted;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TypeAheadField<String>(
        builder: (context, controller, focusNode) {
          return TextField(
            focusNode: focusNode,
            autofocus: true,
            onSubmitted: onSubmitted,
            controller: searchController,
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: buildoutlineinputborder(),
              enabledBorder: buildoutlineinputborder(),
              focusedBorder: buildoutlineinputborder(),

              hintText: 'ابحث عن كتاب',
              hintStyle: TextStyle(color: Colors.white, fontSize: 16),
              suffixIcon: Opacity(
                opacity: 0.8,
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          );
        },
        suggestionsCallback: (pattern) {
          return StateServies.getSuggestion(pattern);
        },
        onSelected: (value) {
           searchController.text = value;
        },

        itemBuilder: (context, suggestion) {
          return ListTile(
            leading: const Icon(
              FontAwesomeIcons.searchengin,
              color: Colors.black,
            ),
            tileColor: Colors.white, // <<< جرب تضيف ده
            title: Text(
              suggestion,
              style: TextStyle(color: Colors.black), // <<< مهم
            ),
          );
        },
        decorationBuilder: (context, child) {
          return Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(8),
            color: Colors.white, // لون القائمة
            child: child,
          );
        },
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
