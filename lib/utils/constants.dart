import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final aBorderRadius = BorderRadius.all(
  Radius.circular(
    14.r,
  ),
);

const aBorderSide = BorderSide(
  color: Colors.transparent,
  width: 0,
);
final outlineInputBorder = OutlineInputBorder(
  borderRadius: aBorderRadius,
  borderSide: aBorderSide,
);
