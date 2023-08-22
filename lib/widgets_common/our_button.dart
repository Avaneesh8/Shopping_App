import 'package:bazaarblend/consts/consts.dart';

Widget ourbutton({required VoidCallback onPress, required Color color, required Color textcolor, required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
      onPressed: () {
      onPress;
      }, child: title.text.color(textcolor).fontFamily(bold).make());
}
