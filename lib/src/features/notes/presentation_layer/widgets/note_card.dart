import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/constants/colors.dart';
import 'package:my_notes/src/features/notes/presentation_layer/pages/edit_note_page.dart';


class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNotePage(),));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          height: 130.h,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: Text('Flutter tips', style: TextStyle(fontSize: 20.sp, color: Colors.white, decoration: TextDecoration.underline),),
                  subtitle: Text('some comments', style: TextStyle(color: Colors.white.withOpacity(0.9))),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.white, size: 35,),
                    onPressed: (){},
                  )
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: const Text('data'),
              )
            ],
          )
      ),
    );
  }
}