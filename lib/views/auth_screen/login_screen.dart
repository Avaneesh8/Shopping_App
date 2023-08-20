import 'package:bazaarblend/consts/consts.dart';
import 'package:bazaarblend/widgets_common/applogo_widget.dart';
import 'package:bazaarblend/widgets_common/bg_widget.dart';
import 'package:bazaarblend/widgets_common/custom_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(child : Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight*.10).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(email,emailHint),
                customTextField(password, passwordhint),
                TextButton(onPressed: (){}, child : Text("$forgetpass")),
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).make(),
        ],
        ),
      ),
    ));
  }
}
