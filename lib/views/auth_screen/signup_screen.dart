import 'package:bazaarblend/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_text_field.dart';
import '../../widgets_common/our_button.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * .10).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(name, namehint),
                customTextField(email, emailHint),
                customTextField(password, passwordhint),
                customTextField(retypePassword, passwordhint),
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                Row(children: [
                  Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck= newValue;
                        });

                      }),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termandcond,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            )),
                      ]),
                    ),
                  ),
                ]),
                ourbutton(
                        onPress: () {},
                        color: isCheck == true ? redColor : lightGrey,
                        textcolor: whiteColor,
                        title: signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: alreadyhaveanaccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey),
                  ),
                  TextSpan(
                    text: login,
                    style: TextStyle(fontFamily: bold, color: redColor),
                  )
                ]
                    )
                ).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make(),
          ],
        ),
      ),
    ));
  }
}
