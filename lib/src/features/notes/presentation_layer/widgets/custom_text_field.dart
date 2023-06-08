import 'package:flutter/material.dart';
import 'package:my_notes/src/constants/colors.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        label: Text('Title'),
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
