import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/custom_app_bar.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/note_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: [
              const CustomAppBar(),
              SizedBox(height: 20.h,),
              const NoteCardWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListViewBuilder extends StatelessWidget {
  CustomListViewBuilder({super.key});
  final List<Map<String,String>> notesList = [
    {}
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 1,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const NoteCardWidget(); 
        },
      ),
    );
  }
}



