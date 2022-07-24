import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container textContainer(BuildContext context, String insideText) {
  return Container(
    width: double.maxFinite,
    height: 88.h,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: Center(
      child: Text(
        insideText,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    ),
  );
}
