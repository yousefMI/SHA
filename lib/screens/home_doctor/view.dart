import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha/screens/home_doctor/component/countainer.dart';
import 'package:sha/screens/home_doctor/model.dart';

class HomeForDoctorScreen extends StatelessWidget {
  HomeForDoctorScreen({Key? key}) : super(key: key);

  final model = Subject({});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello Doctor"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ContainerHomeDoctor(
                  subjectName: model.subjectName.elementAt(index),
                  collage: model.collage.elementAt(index),
                  section: model.section.elementAt(index)),
              itemCount: model.section.length,
            ),
          ),
        ),
      ),
    );
  }
}
