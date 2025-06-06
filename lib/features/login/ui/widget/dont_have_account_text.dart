import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyleManager.font13DarkBlueRegular,
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap =
                      () => context.pushReplacementNamed(Routes.signupScreen),
            text: ' Sign Up',
            style: TextStyleManager.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
