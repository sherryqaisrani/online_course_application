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
    return Scaffold(
      appBar: appBar(
        context,
        title: 'Mentor',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: Column(
          children: [
            SingleListStyle(
              mentorName: 'Niles Peppertrout',
              mentorSubject: 'Dance Teacher',
              mentorRating: '5.0 Reviews',
            ),
          ],
        ),
      ),
    );
  }
}
