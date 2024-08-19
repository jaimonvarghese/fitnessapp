
import 'package:fit_ness_app/presentation/pages/home/widgets/app_bar_widget.dart';
import 'package:fit_ness_app/presentation/pages/home/widgets/challenges_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/my_appointment_widget.dart';
import 'widgets/my_assements.dart';
import 'widgets/tab_bar_section.dart';
import 'widgets/work_out_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabControler;

  @override
  void initState() {
    super.initState();
    _tabControler = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(),
              TabBarSection(tabControler: _tabControler),
              10.verticalSpace,
              Container(
                height: 343.h,
                width: 338.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F9),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TabBarView(
                  controller: _tabControler,
                  children: const [
                    MyAssessments(),
                    MyAppointmentWidget(),
                  ],
                ),
              ),
              10.verticalSpace,
              const ChallengesWidget(),
              10.verticalSpace,
              const WorkOutWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
