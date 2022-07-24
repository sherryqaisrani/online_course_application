import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/file_path.dart';

class SingleListStyle extends StatelessWidget {
  String mentorName;
  String mentorSubject;
  String mentorRating;
  SingleListStyle({
    Key? key,
    required this.mentorName,
    required this.mentorSubject,
    required this.mentorRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 90.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(
          14.r,
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          FilePath.circleImage,
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 4.h,
          ),
          child: Text(
            mentorName,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mentorSubject,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 9.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  FilePath.starIcon,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  mentorRating,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            )
          ],
        ),
        trailing: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14.h,
          ),
          child: SvgPicture.asset(
            FilePath.menuIcon,
          ),
        ),
      ),
    );
  }
}
