import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/add_subject/view.dart';
import 'package:sha/screens/change_doctor/view.dart';
import 'package:sha/screens/create_new_account/view.dart';
import 'package:sha/screens/share/my_button.dart';

class HomeForAdminScreen extends StatelessWidget {
  const HomeForAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello Admin"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 80.w),
                    child: Column(
                      children: [
                        MyButton(
                          buttonColor: 0xFF2196F3,
                          buttonText: "Create New Account",
                          textColor: 0xFFFFFFFF,
                          screen: CreateNewAccount(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(
                          buttonColor: 0xFF2196F3,
                          buttonText: "Change Doctor",
                          textColor: 0xFFFFFFFF,
                          screen: const ChangeDoctorScreen(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(
                          buttonColor: 0xFF2196F3,
                          buttonText: "Add new subject",
                          textColor: 0xFFFFFFFF,
                          screen: AddSubjectScreen(),
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
