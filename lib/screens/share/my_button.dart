import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
   MyButton({Key? key,required this.buttonColor,required this.buttonText,required this.textColor,required this.screen}) : super(key: key);
int buttonColor,textColor;
String buttonText;
Widget screen;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(buttonColor)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius:
            BorderRadiusDirectional.circular(20.r),
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen,));
      },
      child: Center(
        child: Text(buttonText,style: TextStyle(color: Color(textColor))),
      ),
    );
  }
}
