import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/svg.dart';

import '../../../core/theming/style.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(
        'assets/svgs/logolowopactiy.svg',
      ),
      Container(
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.14, 0.4],
          ),
        ),
        child: Image.asset(
          "assets/image/Image_doc.png",
        ),
      ),
      Positioned(
        bottom: 30.h,
        left: 0.w,
        right: 0.w,
        child: Text(
          'Best Doctor \nAppointment App',
          style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
