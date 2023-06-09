import 'package:flutter/material.dart';
import 'package:my_notes/src/constants/colors.dart';


class CustomTextField extends StatelessWidget {
  final String title;
  final int maxLines;
  const CustomTextField({super.key, required this.title, this.maxLines = 1});
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        label: Text(title),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 4
            )

        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 1
            )
        )
      ),
    );
  }
}
