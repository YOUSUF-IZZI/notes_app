import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/custom_material_button.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/custom_text_field.dart';
import 'package:my_notes/src/features/notes/riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';


class AddNoteFormComponent extends ConsumerWidget {
  const AddNoteFormComponent({super.key, });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ReactiveForm(
        formGroup: ref.watch(addFormProvider),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h,),
            Text('Add new note', style: TextStyle(fontSize: 22.sp),),
            SizedBox(height: 5.h,),
            const CustomTextField(title: 'Title', formControlName: 'title'),
            SizedBox(height: 10.h,),
            const CustomTextField(title: 'Details',formControlName: 'details', maxLines: 4,),
            SizedBox(height: 20.h,),
            const CustomMaterialButton(buttonName: 'Add'),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}