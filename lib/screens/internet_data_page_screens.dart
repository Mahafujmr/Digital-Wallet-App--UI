import 'package:digital_wallet_ui/custom_widget/internet_data_page_custom_widget.dart';
import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
class InternetDataPageScreens extends StatelessWidget {
  const InternetDataPageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// appbar text
        title: Text(AppString.internet,
          style: appBarText,
        ),
        centerTitle: true,
        /// arrow icons
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset(AppImage.arrowIcon),
        ),
        backgroundColor: AppColor.menuBar,
      ),
      backgroundColor: AppColor.menuBar,
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 10,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              /// container
              padding: EdgeInsets.only(left: 17),
              width: 315,
              height: 80,
              decoration: BoxDecoration(
                color: AppColor.appBarColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  /// image
                  Image.asset(AppImage.thomas),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// name
                        Text(AppString.thomasProfileName,style: nameText,),
                        /// title
                        Text(AppString.thomasIdNumber,style: titleText,)
                      ],
                    ),
                  ),
                  SizedBox(width: 70),
                  /// arrow down icon
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColor.textField,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Image.asset(AppImage.profileIcon),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text(AppString.chosePack,
              style: recentText.copyWith(color: Color(0xff082431)),),
            SizedBox(height: 20),
            InternetDataPageCustomWidget(boxColor: AppColor.simplePackBoxColor1),
            SizedBox(height: 10),
            InternetDataPageCustomWidget(boxColor: AppColor.simplePackBoxColor2),
            SizedBox(height: 10),
            InternetDataPageCustomWidget(boxColor: AppColor.simplePackBoxColor3),

          ],
        ),
      ),
    );
  }
}
