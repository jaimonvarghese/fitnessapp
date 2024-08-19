
import 'package:fit_ness_app/core/app_images.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/what_do_you_get_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhatDoYouGetSectionWidget extends StatelessWidget {
  const WhatDoYouGetSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What do you get ?",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
              color: const Color(0xFF222E58),
            ),
          ),
          SizedBox(height: 15.h),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 8.w), 
             const WhatDoYouGetWidget(
                  image: AppImages.fiOne, title: "Key Body \n Vitals"),
              SizedBox(width: 8.w),
             const WhatDoYouGetWidget(
                  image: AppImages.fiTwo, title: "Posture \n Analysis"),
              SizedBox(width: 8.w),
            const  WhatDoYouGetWidget(
                  image: AppImages.fiThree, title: "Body \n Composition"),
              SizedBox(width: 8.w),
            const  WhatDoYouGetWidget(
                  image: AppImages.fiFour, title: "Instant \n Reports"),
              SizedBox(width: 8.w),
            ],
          ),
        ],
      ),
    );
  }
}
