import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/home_admin/view.dart';
import 'package:sha/screens/home_doctor/model.dart';
import 'package:sha/screens/share/my_button.dart';
import 'package:sha/screens/share/my_input.dart';

class ChangeDoctorScreen extends StatefulWidget {
  const ChangeDoctorScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangeDoctorScreen> createState() => _ChangeDoctorScreenState();
}

class _ChangeDoctorScreenState extends State<ChangeDoctorScreen> {
  final model = Subject({});

  final sectionName = TextEditingController();
  final newDoctor = TextEditingController();

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Change Doctor"),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
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
                    height: 60.h,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                      child: DropdownButton(
                        hint: const Text("Subject"),
                        borderRadius: BorderRadius.circular(12.r),
                        value: selectedValue,
                        items: model.subjectName.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (newvalue) {
                          setState(() {
                            selectedValue = newvalue.toString();
                            sectionName.text = model.section.elementAt(
                                model.subjectName.indexOf(selectedValue));
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(
                      hintText: "Section",
                      myController: sectionName,
                      write: false),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyInput(myController: newDoctor, hintText: 'New Doctor'),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsetsDirectional.symmetric(horizontal: 50.w),
                    child: MyButton(buttonColor: 0xFF2196F3, buttonText: "Edit", textColor: 0xFF000000, screen: const HomeForAdminScreen()),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}