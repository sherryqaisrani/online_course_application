import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/utils/strings.dart';
import 'package:online_courses/widgets/appBar.dart';

class FavouriteCourses extends StatelessWidget {
  const FavouriteCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
    );
  }
}
