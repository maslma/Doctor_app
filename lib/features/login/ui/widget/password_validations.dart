import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/color_managers.dart';
import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpacing(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpacing(2),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
        verticalSpacing(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpacing(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorManager.grey),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyleManager.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorManager.grey : ColorManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
