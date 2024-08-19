
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/text_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_images.dart';

class HowDoYouItContainer extends StatelessWidget {
  const HowDoYouItContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 350.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE6E6E6),
          width: 1.w,
        ),
        color: const Color(0xFFFAFCFF),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 150.h,
            left: 10.w,
            right: 10.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0xFFC1EAD1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.securityIcon,
                        width: 13.w,
                        height: 15.h,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "We do not store or share your personal data",
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
                SizedBox(height: 10.h),
                const TextListWidget(
                    text: "1. Ensure that you are in a well-lit space"),
                SizedBox(height: 5.h), // Responsive vertical space
                const TextListWidget(
                    text:
                        "2. Allow camera access and place your device against a stable object or wall"),
                SizedBox(height: 5.h), // Responsive vertical space
                const TextListWidget(text: "3. Avoid wearing baggy clothes"),
                SizedBox(height: 5.h), // Responsive vertical space
                const TextListWidget(
                    text:
                        "4. Make sure you exercise as per the instruction provided by the trainer"),
                SizedBox(height: 5.h), // Responsive vertical space
                const TextListWidget(
                    text: "5. Watch the short preview before each exercise")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
