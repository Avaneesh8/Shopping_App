import 'package:bazaarblend/consts/consts.dart';
import 'package:bazaarblend/consts/lists.dart';
import 'package:bazaarblend/widgets_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),

            10.heightBox,

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    //swipper brands
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: SlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          SlidersList[index],
                          fit: BoxFit.fitWidth,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      },
                    ),
                    10.heightBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      List.generate(
                          2,
                              (index) => homeButtons(
                            width: context.screenWidth / 2.5,
                            height: context.screenHeight * 0.15,
                            icon:index ==0 ?icTodaysDeal :icFlashDeal,
                            title:index==0 ? todayDeal : flashsale,
                          )),

                    ),

                    //2nd Swipper
                    10.heightBox,

                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: SlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          SecondSlidersList[index],
                          fit: BoxFit.fitWidth,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      },
                    ),

                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        List.generate(3, (index) => homeButtons(
                          width: context.screenWidth / 3.5,
                          height: context.screenHeight * 0.15,
                          icon:index ==0 ?icTopCategories:index==1?icBrands:icTopSeller,
                          title:index==0 ? topcategories : index==1?brand:topSeller,
                        ))

                    ),
                    //Featurede Categories
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    ),
                    20.heightBox,
                    Row(
                      children: List.generate(3, (index) => Column(

                      ))
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
