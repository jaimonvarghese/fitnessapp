
import 'package:fit_ness_app/core/app_images.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/bottom_background_circle_widget.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/deail_assement_title.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/how_do_you_image.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/text_list_widget.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/top_background_circle_widget.dart';
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/widgets/what_do_you_get_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/how_do_you_it_container_widget.dart';

class AssementDetailPage extends StatelessWidget {
  const AssementDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          Positioned(
            top: 0.h,
            left: 0.w,
            right: 0.w,
            child: Container(
              width: 375.w,
              height: 322.h,
              decoration: const BoxDecoration(
                color: Color(0x8069F5BB),
              ),
            ),
          ), // backbutton
          Positioned(
            top: 65.h,
            left: 30.w,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
          ),

          // entryimage1
          Positioned(
            top: 52.h,
            left: 199.h,
            child: Image.asset(
              AppImages.entryImageOne,
              width: 145.w,
              height: 202.h,
            ),
          ),
          // Text
          Positioned(
            top: 116.h,
            left: 36.w,
            child: const DeailAsstementTitle(),
          ),
          Positioned(
            left: 0.w,
            right: 0.w,
            bottom: 0.h,
            top: 265.h,
            child: Container(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 20.h), // Responsive padding
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r), // Responsive border radius
                  topLeft: Radius.circular(30.r), // Responsive border radius
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const WhatDoYouGetSectionWidget(),
                    Container(
                      width: 336.w, // Responsive width
                      height: 782.h, // Responsive height
                      color: Colors.white,
                      child: Stack(
                        children: [
                          // Top background circle design
                          Positioned(
                            left: 140.w, // Responsive position
                            top: 0.h, // Responsive position
                            child: const TopBackgroundCircleWidget(),
                          ),
                          // Bottom background circle design
                          Positioned(
                            left: 180.w, // Responsive position
                            top: 400.h, // Responsive position
                            child: const BottomBackgroundCircleWidget(),
                          ),
                          // How we do it text widget
                          Positioned(
                            top: 50.h, // Responsive position
                            child: Text(
                              "How we do it?",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp, // Responsive font size
                                color: const Color(0xFF222E58),
                              ),
                            ),
                          ),
                          // How we do it container
                          Positioned(
                            top: 90.h, // Responsive position
                            child: const HowDoYouItContainer(),
                          ),
                          // How we do it container image
                          Positioned(
                            left: 30.w, // Responsive position
                            top: 55.h, // Responsive position
                            child: const HowDoYouImage(),
                          ),
                          // Benefit text widget
                          Positioned(
                            top: 480.h, // Responsive position
                            child: Text(
                              "Benefits",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp, // Responsive font size
                                color: const Color(0xFF222E58),
                              ),
                            ),
                          ),
                          // Benefits container
                          Positioned(
                            top: 520.h, // Responsive position
                            child: Container(
                              width: 320.w, // Responsive width
                              height: 150.h, // Responsive height
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFE6E6E6),
                                  width: 1.w, // Responsive border width
                                ),
                                color: const Color(0xFFFAFCFF),
                                borderRadius: BorderRadius.circular(
                                    22.r), // Responsive border radius
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15.h, left: 20.h, right: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextListWidget(
                                        text:
                                            'Holistic insight into Physical Health Across'),
                                    10.verticalSpace,
                                    const TextListWidget(
                                        text:
                                            'Enables Early Interventions, Improving Preventive Care and Health Outcomes'),
                                    10.verticalSpace,
                                    const TextListWidget(
                                        text:
                                            "Tailored Lifestyle and Health Recommendations Based on Deatiled Assessement Results")
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 700.h,
                            child: Container(
                              width: 320.w,
                              height: 68.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFF255FD5),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 25.w,
                                    height: 25.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF255FD5),
                                      borderRadius: BorderRadius.circular(45.r),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 24.r,
                                      ),
                                    ),
                                  ),
                                  5.horizontalSpace,
                                  Text(
                                    "Start Assessment",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
