import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  String filePath;
  String className;
  String classNumber;

  CategoryCard({
    Key? key,
    required this.filePath,
    required this.className,
    required this.classNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 68,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            7.r,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 14.h,
          horizontal: 14.w,
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 13.w,
                ),
                child: SvgPicture.asset(
                  filePath,
                ),
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            Column(
              children: [
                Text(
                  className,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  classNumber,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
