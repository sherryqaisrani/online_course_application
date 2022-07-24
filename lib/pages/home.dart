import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/file_path.dart';
import 'package:online_courses/utils/strings.dart';
import 'package:online_courses/widgets/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                  Text(
                    AppStrings.home,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      FilePath.personAvatar,
                    ),
                  )
                ],
              ),
              Text(
                AppStrings.wellcome,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Benjamin Evalent',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
              Text(
                AppStrings.category,
                style: Theme.of(context).textTheme.headline5,
              ),
              Row(
                children: [
                  CategoryCard(
                    filePath: FilePath.categoryPerson,
                    className: 'Dancing',
                    classNumber: '12 Classes',
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  CategoryCard(
                    filePath: FilePath.musicIcon,
                    className: 'Music',
                    classNumber: '10 Classes',
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.favoriteCourses,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
