import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_courses/utils/colors.dart';

class SwitchContainer extends StatelessWidget {
  String buttonName;
  String rewview;
  SwitchContainer({
    Key? key,
    required this.buttonName,
    required this.rewview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 38.h,
            width: 185.w,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(
                7.r,
              ),
            ),
            child: Center(
              child: Text(
                buttonName,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: aLightGreen),
              ),
            ),
          ),
          Text(
            rewview,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
