import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/file_path.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            FilePath.homeIcon,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            FilePath.courseIcon,
          ),
          label: 'Course List',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(FilePath.chatIcon),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(FilePath.personIcon),
          label: 'Profile',
        ),
      ],
    );
  }
}
