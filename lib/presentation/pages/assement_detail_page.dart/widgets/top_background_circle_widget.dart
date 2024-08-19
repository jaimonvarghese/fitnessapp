import 'dart:math' as math;
import 'package:fit_ness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBackgroundCircleWidget extends StatelessWidget {
  const TopBackgroundCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Transform.rotate(
        angle: -10.89 * math.pi / 180,
        child: SizedBox(
          width: 148.w,
          height: 148.h,
          child: Image.asset(
            AppImages.backGroundCircle,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
