import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: aLightTextColor,
                    size: 30.h,
                  ),
                ),
                Text(
                  AppStrings.home,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
