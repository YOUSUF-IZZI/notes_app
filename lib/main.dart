import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/src/constants/variables.dart';
import 'src/features/notes/presentation_layer/pages/home_page.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const ProviderScope(child: MyNotesApp()));
}

class MyNotesApp extends StatelessWidget {
  const MyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: 'Poppins'
            ),
            home: const HomePage()
        );
      },
    );
  }
}

