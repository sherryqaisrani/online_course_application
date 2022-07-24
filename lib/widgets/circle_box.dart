import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleBox extends StatelessWidget {
  String detail;
  CircleBox({
    required this.detail,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).colorScheme.surface,
              width: 4,
            ),
          ),
        ),
        SizedBox(
          width: 14.w,
        ),
        Text(
          'Eastern Dance Champion',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
