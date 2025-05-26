import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyleManager.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyleManager.font13BlueSemiBold,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.loginScreen);
                  },
          ),
        ],
      ),
    );
  }
}
