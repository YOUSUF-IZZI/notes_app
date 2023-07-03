import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/constants/colors.dart';
import 'package:my_notes/src/features/notes/presentation_layer/components/add_note_form.dart';


class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28.sp,
      backgroundColor: Colors.white,
      child: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            context: context,
            builder: (context) {
              return const AddNoteFormComponent();
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}





