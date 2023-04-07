import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/home_admin/view.dart';
import 'package:sha/screens/share/my_button.dart';
import 'package:sha/screens/share/my_input.dart';

class AddSubjectScreen extends StatelessWidget {
  AddSubjectScreen({Key? key}) : super(key: key);
  final email = TextEditingController();
  final user = TextEditingController();
  final institute = TextEditingController();
  final password = TextEditingController();
  final section = TextEditingController();
  final subjectName = TextEditingController();
  final semester = TextEditingController();
  final session = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Add Subject')),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 30.w, vertical: 20.h),
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
                    height: 40.h,
                  ),
                  MyInput(
                      hintText: "Doctor Name",
                      myController: user,
                      write: false),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: email, hintText: "Email"),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: password, hintText: 'Password',isPassword: true),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: institute, hintText: 'Institute'),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: section, hintText: 'Section'),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: subjectName, hintText: 'Subject Name'),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: session, hintText: 'session'),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: semester, hintText: 'Semester'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 50.w),
                    child: MyButton(
                        buttonColor: 0xFF2196F3,
                        buttonText: "Edit",
                        textColor: 0xFF000000,
                        screen: const HomeForAdminScreen()),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
