import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/home_doctor/view.dart';
import 'package:sha/screens/share/my_button.dart';

class SubjectScreen extends StatelessWidget {
  SubjectScreen({Key? key, required this.subjectName}) : super(key: key);
  String subjectName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subjectName), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  Padding(
                    padding:  EdgeInsetsDirectional.symmetric(horizontal: 80.w),
                    child: Column(
                      children: [
                        MyButton(
                          buttonColor: 0xFF2196F3,
                          buttonText: "Attendance QR code",
                          textColor: 0xFFFFFFFF,
                          screen: HomeForDoctorScreen(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(
                          buttonColor: 0xFF2196F3,
                          buttonText: "Attendance manually",
                          textColor: 0xFFFFFFFF,
                          screen: HomeForDoctorScreen(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(
                          buttonColor: 0xFF2196F3,
                          buttonText: "Show attendance sheet",
                          textColor: 0xFFFFFFFF,
                          screen: HomeForDoctorScreen(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
