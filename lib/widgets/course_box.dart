import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';

class CourseBox extends StatelessWidget {
  const CourseBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 324.w,
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
                    child: const Text(
                      'Experienced',
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
                        '\$90.00',
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
                    'Web Design Education',
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
                            '4.8 Reviews',
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
                            '257 Participants',
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
