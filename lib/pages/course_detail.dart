import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/widgets/appBar.dart';
import 'package:online_courses/widgets/course_box.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        title: 'Course Details',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: CourseBox(
                  courseName: 'Individual Finance Education',
                  coursePrice: '\$120.00',
                  courseRating: '4.8 Reviews',
                  courseParticipants: '432 Participants',
                  buttonName: 'Experienced',
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.maxFinite,
                height: 94.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 14.h,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 14.h,
                    ),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        FilePath.circleImage,
                      ),
                      title: Text(
                        'Ingredia Nutrisha',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                        'Finance Teacher',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: SvgPicture.asset(
                        FilePath.menuIcon,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Definition',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.maxFinite,
                height: 88.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Center(
                  child: Text(
                    'Proin lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor, lobortis.',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 38.h,
                      width: 185.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          7.r,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Materi',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: aLightGreen),
                        ),
                      ),
                    ),
                    Text(
                      'Reviews (453)',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.maxFinite,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    14.r,
                  ),
                ),
                child: ListTile(
                  leading: SvgPicture.asset(
                    FilePath.videoPlayIcon,
                  ),
                  title: Text(
                    '01. Introduction',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Text(
                    '3.32 Minutes',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
