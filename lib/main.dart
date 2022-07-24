import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_courses/pages/favourite_courses.dart';
import 'package:online_courses/pages/home.dart';
import 'package:online_courses/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Online Courses',
          themeMode: ThemeMode.system,
          theme: lightTheme,
          home: child,
        );
      },
      child: FavouriteCourses(),
    );
  }
}
