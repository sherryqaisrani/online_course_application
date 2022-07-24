import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';

class CourseBox extends StatelessWidget {
  String courseName;
  String coursePrice;
  String courseRating;
  String courseParticipants;
  String buttonName;

  CourseBox({
    Key? key,
    required this.courseName,
    required this.coursePrice,
    required this.courseRating,
    required this.courseParticipants,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: widthContainer,
      // height: 318.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            14.r,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            Stack(
              children: [
                SvgPicture.asset(
                  FilePath.boxImage,
                  fit: BoxFit.fill,
                  // height: 208.h,
                  // width: 296.w,
                ),
                Positioned(
                  bottom: 14,
                  right: 8,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      buttonName,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Design',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        coursePrice,
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: aLightGreen,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    courseName,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            FilePath.starIcon,
                            width: 14.w,
                            height: 14.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            courseRating,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            FilePath.doublePerson,
                            width: 20.w,
                            height: 16.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            courseParticipants,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 14.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
