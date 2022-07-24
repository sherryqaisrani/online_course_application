import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/widgets/appBar.dart';
import 'package:online_courses/widgets/single_row_list.dart';

class MentorScreen extends StatelessWidget {
  const MentorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mentorList = [
      {
        "name": "Niles Peppertrout",
        "subject": "Dance Teacher",
        "rating": "5.0 Reviews",
      },
      {
        "name": "Ingredia Nutrisha",
        "subject": "Music Teacher",
        "rating": "4.8 Reviews",
      },
      {
        "name": "Penny Tool",
        "subject": "Dance Teacher",
        "rating": "4.9 Reviews",
      },
      {
        "name": "Indigo Violet",
        "subject": "Theater Teacher",
        "rating": "4.8 Reviews",
      },
      {
        "name": "Elon Gated",
        "subject": "Music Teacher",
        "rating": "5.0 Reviews",
      },
      {
        "name": "Dianne Ameter",
        "subject": "Dance Teacher",
        "rating": "4.9 Reviews",
      },
      {
        "name": "Quiche Hollandaise",
        "subject": "Design Instructor",
        "rating": "4.8 Reviews",
      },
    ];
    return Scaffold(
      appBar: appBar(
        context,
        title: 'Mentor',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              mentorList.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                child: SingleListStyle(
                  mentorName: mentorList[index]['name'],
                  mentorSubject: mentorList[index]['subject'],
                  mentorRating: mentorList[index]['rating'],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
