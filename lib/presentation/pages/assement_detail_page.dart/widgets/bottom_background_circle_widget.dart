import 'dart:math' as math;

import 'package:fit_ness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BottomBackgroundCircleWidget extends StatelessWidget {
  const BottomBackgroundCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Transform.rotate(
        angle: 170.89 * math.pi / 180,
        child: SizedBox(
          width: 118.w,
          height: 118.h,
          child: Image.asset(
            AppImages.backGroundCircle,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
