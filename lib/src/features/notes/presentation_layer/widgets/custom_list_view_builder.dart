import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/src/features/notes/presentation_layer/widgets/note_card.dart';


class CustomListViewBuilder extends StatelessWidget {
  CustomListViewBuilder({super.key});
  final List<Map<String,String>> notesList = [
    {}
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(4.h),
            child: const NoteCardWidget(),
          );
        },
      ),
    );
  }
}
