import 'package:doctor_app/core/theming/text-style_managers.dart';
import 'package:doctor_app/core/widget/app_text_button.dart';
import 'package:doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:doctor_app/features/sign_up/ui/widget/already_have_account_text.dart';
import 'package:doctor_app/features/sign_up/ui/widget/sign_up_bloc_listener.dart';
import 'package:doctor_app/features/sign_up/ui/widget/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../logic/sign_up_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: TextStyleManager.font24BlueBold),
                verticalSpacing(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyleManager.font14GreyRegular,
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpacing(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyleManager.font16whiteSemibold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
