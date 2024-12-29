import 'package:digital_wallet_ui/custom_widget/electricity_page_custom_widget.dart';
import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
class ElectricityBillScreens extends StatelessWidget {
  const ElectricityBillScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// appbar text
        title: Text(AppString.electricityText,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    /// text
                    Text(AppString.electricityAmount,
                    style: amountTextStyle.copyWith(color: Color(0xff2C2C63),
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// text
                        Text(AppString.electricityDetales,
                          style: titleText.copyWith(fontSize: 14),
                        ),
                        SizedBox(width: 5),
                        /// icon
                        Image.asset(AppImage.circleArrowIcon),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.only(left: 40,top: 30,right: 20),
                      width: 375,
                      height: 499,
                      decoration: BoxDecoration(
                        color: AppColor.container,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///text
                          Text(AppString.electricityAccunt,
                          style: recentText.copyWith(color: Color(0xff082431)),
                          ),
                          SizedBox(height: 40),
                          /// electricity custom widget
                          ElectricityPageCustomWidget(icons: AppImage.nameIcon, name: AppString.name, title: AppString.fullName),
                          SizedBox(height: 20),
                          Image.asset(AppImage.lineIcon),
                          SizedBox(height: 40),
                          ElectricityPageCustomWidget(icons: AppImage.customerIcon, name: AppString.customerId, title: AppString.customerIdNumber),
                          SizedBox(height: 20),
                          Image.asset(AppImage.lineIcon),
                          SizedBox(height: 40),
                          ElectricityPageCustomWidget(icons: AppImage.monthIcon, name: AppString.month, title: AppString.monthYear),
                          SizedBox(height: 20),
                          Image.asset(AppImage.lineIcon),

                          SizedBox(height: 40),
                          /// continue container
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            width: 315,
                            height: 64,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(36),
                                color: AppColor.boxColor
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               /// text
                                Text(AppString.continueBox,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],

                      ),
                    ),

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
