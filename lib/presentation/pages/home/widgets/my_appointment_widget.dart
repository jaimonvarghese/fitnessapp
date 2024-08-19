
import 'package:fit_ness_app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppointmentWidget extends StatelessWidget {
  const MyAppointmentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.r),
          child: Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w, 
                childAspectRatio:
                    147.w / 117.h, 
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 147.w, 
                  height: 117.h, 

                  decoration: BoxDecoration(
                    color: const Color(0xFFC6D9FF),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 57.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45.r),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppImages.appointmentImage),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Cancer 2nd \n Opinion",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp, 
                              color: const Color(0xFF303030),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
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
      ],
    );
  }
}
