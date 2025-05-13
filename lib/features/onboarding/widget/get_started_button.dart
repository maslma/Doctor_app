import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/color_managers.dart';
import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
        minimumSize: Size(double.infinity, 52),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text('Get Started', style: TextStyleManager.font16greySemibold),
    );
  }
}
