import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/share/my_button.dart';
import 'package:sha/screens/subject/view.dart';

class ContainerHomeDoctor extends StatelessWidget {
  ContainerHomeDoctor({Key? key, required this.subjectName,required this.section,required this.collage}) : super(key: key);
  String subjectName;
  String collage;
  String section;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(12.r),
            color: Colors.blue,
          ),
          height: 200.h,
          width: 250.w,
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(subjectName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.h),
                  Text(collage, style: TextStyle(color: Colors.black,fontSize: 16.sp)),
                  SizedBox(height: 15.h),
                  Text(section, style: TextStyle(color: Colors.black,fontSize: 16.sp)),
                  const Spacer(),
                  SizedBox(
                    width: 200.w,
                    child: MyButton(
                        screen: SubjectScreen(subjectName: subjectName),
                        buttonColor: 0xFFFFFFFF,
                        buttonText: "Enter",
                        textColor: 0xFF000000),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
