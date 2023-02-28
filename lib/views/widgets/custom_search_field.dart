import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/utils/colors.dart';
import 'package:flutter_imdb_app/utils/style.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController? searchController;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  const CustomSearchField({
    super.key,
    this.searchController,
    this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: kCustomListTileBoxDecoration,
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: TextField(
        controller: searchController,
        onChanged: onChanged,
        style: kTextStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText ?? '',
          hintStyle: const TextStyle(
            color: kWhiteColor,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
