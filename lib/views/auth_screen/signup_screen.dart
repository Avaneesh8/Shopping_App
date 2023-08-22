import 'package:bazaarblend/consts/consts.dart';

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
                    customTextField(name,namehint),
                    customTextField(email, emailHint),
                    customTextField(password, passwordhint),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                            onPressed: () {}, child: forgetpass.text.make())),
                    5.heightBox,
                    ourbutton(onPress: (){}, color: redColor, textcolor: whiteColor, title: login).box.width(context.screenWidth-50).make(),
                    5.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    ourbutton(onPress: (){}, color: lightgolden, textcolor: redColor, title: signup).box.width(context.screenWidth-50).make(),

                    10.heightBox,
                    loginWith.text.color(fontGrey).make(),
                    5.heightBox,

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
