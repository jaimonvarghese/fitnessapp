import 'dart:ui';
import 'package:fit_ness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeailAsstementTitle extends StatelessWidget {
  const DeailAsstementTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Health Risk",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            color: const Color(0xFF222E58),
          ),
        ),
        Text(
          "Assement",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            color: const Color(0xFF222E58),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          width: 62.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.phTimer,
                width: 11.w,
                height: 13.h,
              ),
              SizedBox(width: 5.w),
              Text(
                "4 min",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 11.sp,
                  color: const Color(0xFF222E58),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
