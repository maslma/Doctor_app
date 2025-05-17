import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyleManager.font13GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyleManager.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyleManager.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyleManager.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}