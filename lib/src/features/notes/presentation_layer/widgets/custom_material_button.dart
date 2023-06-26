import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/constants/colors.dart';


class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, required this.buttonName});
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        //minWidth: MediaQuery.of(context).size.width-200,
        height: 40.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          //side: BorderSide(color: Colors.red)
        ),
        color: kPrimaryColor,
        highlightColor: Colors.orangeAccent,
        splashColor: Colors.redAccent,
        child: Text(buttonName, style: TextStyle(fontSize: 22.sp),),
        onPressed: (){},
      ),
    );
  }
}