import 'package:doctor_app/core/theming/color_managers.dart';
import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Maslma!', style: TextStyleManager.font18DarkBlueBold),
            Text(
              'How Are you Today?',
              style: TextStyleManager.font12GreyRegular,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: ColorManager.moreLighterGray,
          child: SvgPicture.asset('assets/svg/notifications.svg'),
        ),
      ],
    );
  }
}
