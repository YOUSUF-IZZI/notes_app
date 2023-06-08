import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/constants/colors.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/custom_text_field.dart';


class CustomFloatinActionButton extends StatelessWidget {
  const CustomFloatinActionButton({super.key,});

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
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h,),
                    Text('Add new note', style: TextStyle(fontSize: 22.sp),),
                    SizedBox(height: 5.h,),
                    const CustomTextField(),
                    SizedBox(height: 10.h,),
                    const CustomTextField()
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}