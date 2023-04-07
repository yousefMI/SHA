import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/share/my_input.dart';
import 'package:sha/screens/home_doctor/view.dart';
import 'package:sha/screens/home_admin/view.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key, this.isAdmin = false}) : super(key: key);
  bool isAdmin;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsetsDirectional.only(top: 30.h, start: 30.w, end: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                MyInput(
                  myController: emailController,
                  hintText: "Email",
                ),
                SizedBox(
                  height: 10.h,
                ),
                MyInput(
                    myController: passwordController,
                    hintText: "Password",
                    isPassword: true),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () {
                    isAdmin
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeForAdminScreen(),
                            ))
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeForDoctorScreen(),
                            ));
                  },
                  child: const Text("Login"),
                ),
                isAdmin
                    ? SizedBox(
                        height: 50.h,
                      )
                    : TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen(isAdmin: true),
                              ));
                        },
                        child: const Text("Login as admin"),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
