// import 'dart:async';
// import 'package:doctor_app/core/helpers/extensions.dart';
// import 'package:doctor_app/core/routing/routes.dart';
// import 'package:doctor_app/core/theming/color_managers.dart';
// import 'package:doctor_app/core/theming/text-style_managers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // تأكد من هذا الباكيج

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startDelay();
//   }

//   void _startDelay() {
//     _timer = Timer(const Duration(seconds: 3), _goNext);
//   }

//   void _goNext() {
//     context.pushReplacementNamed(Routes.onBoardingScreen);
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.white,
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Center(
//             child: SvgPicture.asset(
//               'assets/svg/docdoc_logo_low_opacity.svg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset(
//                 'assets/svg/docdoc_logo.svg',
//                 width: 70.w,
//                 height: 70.h,
//               ),
//               SizedBox(width: 10.w),
//               Text('Docdoc', style: TextStyleManager.font35BlackBold),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
