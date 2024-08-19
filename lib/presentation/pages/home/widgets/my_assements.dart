
import 'package:fit_ness_app/presentation/pages/assement_detail_page.dart/assement_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_images.dart';

class MyAssessments extends StatelessWidget {
  const MyAssessments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10.h, horizontal: 15.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AssementDetailPage(),
                    ));
                  },
                  child: Container(
                    width: double.infinity, 
                    height: 120.h, 
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10.r), 
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 120.w, 
                          height: double.infinity, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                  15.r), 
                            ),
                            color: const Color(0xFFDFBE5F),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppImages.assementImage,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 15.w), 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fitness Assessment",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp, 
                                  color: const Color(0xFF303030),
                                ),
                              ),
                              5.verticalSpace,
                              Text(
                                "Get started on your fitness",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp, 
                                  color: const Color(0xFF303030),
                                ),
                              ),
                              Text(
                                "goals with our physical",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                  color: const Color(0xFF303030),
                                ),
                              ),
                              Text(
                                "assessment and vital scan",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp, 
                                  color: const Color(0xFF303030),
                                ),
                              ),
                              10.verticalSpace,
                              Row(
                                children: [
                                  Container(
                                    width: 19.w, 
                                    height: 19.h, 
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF255FD5),
                                      borderRadius: BorderRadius.circular(
                                          45.r), 
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 16.r, 
                                      ),
                                    ),
                                  ),
                                  3.horizontalSpace,
                                  Text(
                                    "Start",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp, 
                                      color: const Color(0xFF255FD5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10.h), 
        Container(
          width: 90.w, 
          height: 22.h, 
          decoration: BoxDecoration(
            color: const Color(0xFF232F58),
            borderRadius:
                BorderRadius.circular(45.r), 
          ),
          child: Center(
            child: Text(
              "View All",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 15.sp, 
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationThickness: 2.h, 
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h), 
      ],
    );
  }
}
