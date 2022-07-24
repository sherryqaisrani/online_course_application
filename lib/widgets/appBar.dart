import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/utils/strings.dart';

AppBar appBar(BuildContext context, {required String title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: const Icon(
      Icons.arrow_back,
      color: aLightTextColor,
    ),
    title: Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          FilePath.menuIcon,
        ),
      ),
    ],
  );
}
