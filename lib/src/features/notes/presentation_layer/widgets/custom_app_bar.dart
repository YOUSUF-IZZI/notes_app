import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 24.sp),),
        const Spacer(),
        Container(
          height: 45.h,
          width: 45.w,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16)
          ),
          child: Icon(Icons.search, color: Colors.white, size: 40.sp,),
        )
      ],
    );
  }
}
