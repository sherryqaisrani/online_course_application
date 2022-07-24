import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/utils/strings.dart';
import 'package:online_courses/widgets/appBar.dart';
import 'package:online_courses/widgets/bottom_navbar.dart';
import 'package:online_courses/widgets/course_box.dart';

class FavouriteCourses extends StatelessWidget {
  const FavouriteCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List favouritCourse = [
      {
        "courseName": "Illustration Drawing Education",
        "coursePrice": "\$250.00",
        "courseRating": "5.0 Reviews",
        "courseParticipants": "235 Participants",
        "buttonName": "Experienced",
      },
      {
        "courseName": "Mobile Design Education",
        "coursePrice": "\$100.00",
        "courseRating": "4.8 Reviews",
        "courseParticipants": "432 Participants",
        "buttonName": "Novice",
      },
      {
        "courseName": "Individual Finance Education",
        "coursePrice": "\$120.00",
        "courseRating": "4.8 Reviews",
        "courseParticipants": "432 Participants",
        "buttonName": "Experienced",
      }
    ];
    return Scaffold(
      appBar: appBar(context, title: AppStrings.favoriteCourses),
      bottomNavigationBar: bottomNavigationBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: List.generate(
                    favouritCourse.length,
                    growable: true,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 14.h,
                      ),
                      child: CourseBox(
                        courseName: favouritCourse[index]['courseName'],
                        coursePrice: favouritCourse[index]['coursePrice'],
                        courseRating: favouritCourse[index]['courseRating'],
                        courseParticipants: favouritCourse[index]
                            ['courseParticipants'],
                        buttonName: favouritCourse[index]['buttonName'],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
