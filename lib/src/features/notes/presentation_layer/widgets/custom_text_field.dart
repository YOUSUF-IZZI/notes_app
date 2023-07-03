import 'package:flutter/material.dart';
import 'package:my_notes/src/constants/colors.dart';
import 'package:reactive_forms/reactive_forms.dart';


class CustomTextField extends StatelessWidget {
  final String title;
  final int maxLines;
  final formControlName;
  const CustomTextField({super.key, required this.title, required this.formControlName, this.maxLines = 1});
  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: formControlName,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          label: Text(title),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  color: kPrimaryColor,
                  width: 4
              )

          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  width: 1
              )
          )
      ),
    );
  }
}