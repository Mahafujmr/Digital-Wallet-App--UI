import 'package:digital_wallet_ui/custom_widget/send_money_page_custom_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
import 'internet_data_page_screens.dart';
class SendMoneyScreens extends StatelessWidget {
  const SendMoneyScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// appbar text
        title: Text(AppString.sendMoney,
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
        backgroundColor: AppColor.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,top: 30,right: 20),
        child: Column(
          children: [
            Container(
              /// container
              padding: EdgeInsets.only(left: 17),
              width: 315,
              height: 80,
              decoration: BoxDecoration(
                color: AppColor.textField,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  /// image
                  Image.asset(AppImage.samantha),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// name
                        Text(AppString.samantaText,style: nameText,),
                        /// title
                        Text(AppString.samantaTitle,style: titleText,)
                      ],
                    ),
                  ),
                  SizedBox(width: 55),
                  /// arrow down icon
                  Image.asset(AppImage.arrowDownIcon),
                ],
              ),
            ),
            SizedBox(height: 30),
            /// amount number text
            Text(AppString.amountNumber,
            style: amountTextStyle,
            ),
            SizedBox(height: 40),
            /// number list cunstom widget
            SendMoneyPageCustomWidget(number: AppString.numberOne, title:AppString.numberTwo, subTitle: AppString.numberThree),
            SizedBox(height: 45),
            SendMoneyPageCustomWidget(number: AppString.numberFour, title:AppString.numberFive, subTitle: AppString.numberSix),
            SizedBox(height: 45),
            SendMoneyPageCustomWidget(number: AppString.numberSeven, title:AppString.numberEight, subTitle: AppString.numberNine),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /// text
                Text(AppString.numberDote,style: numberTextStyle,),
                /// text
                Text(AppString.numberZero,style: numberTextStyle,),
                /// image
                Image.asset(AppImage.arrowCircleIcon),
              ],
            ),
            SizedBox(height: 40),
            ///container
            InkWell(
              /// push internet data screens
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetDataPageScreens()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 12),
                width: 315,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: AppColor.boxColor
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.subBoxColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset(AppImage.groupIcon),
                    ),
                    SizedBox(width: 40),
                    Text(AppString.boxText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                      wordSpacing: 4.0
                    ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      backgroundColor: AppColor.appBarColor,
    );
  }
}
