import 'package:bazaarblend/consts/consts.dart';
import 'package:bazaarblend/consts/lists.dart';
import 'package:bazaarblend/consts/strings.dart';
import 'package:bazaarblend/views/auth_screen/home_screen.dart';
import 'package:bazaarblend/views/auth_screen/signup_screen.dart';
import 'package:bazaarblend/widgets_common/applogo_widget.dart';
import 'package:bazaarblend/widgets_common/bg_widget.dart';
import 'package:bazaarblend/widgets_common/custom_text_field.dart';
import 'package:bazaarblend/widgets_common/our_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(email, emailHint),
                customTextField(password, passwordhint),
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                ourbutton(onPress: (){
                  Get.to(()=>HomeScreen());
                }, color: redColor, textcolor: whiteColor, title: login).box.width(context.screenWidth-50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourbutton(onPress: (){
                  Get.to(()=> const Signupscreen());
                }, color: lightgolden, textcolor: redColor, title: signup).box.width(context.screenWidth-50).make(),

                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index],width: 30,),
                    ),
                  )),
                )
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
