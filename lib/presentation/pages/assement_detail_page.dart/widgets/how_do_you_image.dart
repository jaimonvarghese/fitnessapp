
import 'package:fit_ness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowDoYouImage extends StatelessWidget {
  const HowDoYouImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270.w,
      height: 182.h,
      child: Image.asset(
        AppImages.entryImageTwo,
        fit: BoxFit.cover,
      ),
    );
  }
}
