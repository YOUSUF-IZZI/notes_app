import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/custom_material_button.dart';


class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Edite current note', style: TextStyle(fontSize: 24.sp),),
              SizedBox(height: 30.h,),
              //const CustomTextField(title: 'Title'),
              SizedBox(height: 10.h,),
              //const CustomTextField(title: 'Details', maxLines: 4,),
              SizedBox(height: 20.h,),
              const CustomMaterialButton(buttonName: 'Edit'),
              SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    );
  }
}
