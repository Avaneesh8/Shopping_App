import 'package:bazaarblend/consts/colors.dart';
import 'package:bazaarblend/consts/consts.dart';
import 'package:bazaarblend/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../auth_screen/login_screen.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  //creating a method to change the screen

  changescreen()
  {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>LoginScreen());
    });
  }

  @override
  void initState() {
    changescreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment:  Alignment.topLeft,child:  Image.asset(icSplashBg,width: 300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox
            //splash screen ui work done
          ],
        ),
      ),
    );
  }
}
