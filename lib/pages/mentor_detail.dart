import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/widgets/appBar.dart';
import 'package:online_courses/widgets/bottom_navbar.dart';
import 'package:online_courses/widgets/circle_box.dart';
import 'package:online_courses/widgets/single_row_list.dart';
import 'package:online_courses/widgets/switch_container.dart';
import 'package:online_courses/widgets/textContainer.dart';

class MentorDetail extends StatelessWidget {
  const MentorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, title: 'Detail Mentor'),
      bottomNavigationBar: bottomNavigationBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleListStyle(
              mentorName: 'Valentino Morose',
              mentorSubject: 'Dance Teacher',
              mentorRating: '4.5 Reviews',
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'About',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 20.h,
            ),
            textContainer(
              context,
              'Dance teacher lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor.',
            ),
            SizedBox(
              height: 30.h,
            ),
            SwitchContainer(
              buttonName: 'Experience',
              rewview: 'Reviews (453)',
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: double.maxFinite,
              height: 198.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  14.r,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.w,
                  vertical: 14.h,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 9,
                      child: SvgPicture.asset(
                        FilePath.linesIcon,
                      ),
                    ),
                    Column(
                      children: [
                        CircleBox(
                          detail: 'Eastern Dance Champion',
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CircleBox(
                          detail: 'Florida Dance Champion',
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CircleBox(
                          detail: 'Alabama Dance Champion',
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CircleBox(
                          detail: 'Paris Dance Champion',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.h,
                    ),
                    primary: aLightGreen,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        19.r,
                      ),
                      side: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                    )),
                onPressed: () {},
                child: Text(
                  'Leave a review',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
