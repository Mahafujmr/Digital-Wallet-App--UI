import 'package:digital_wallet_ui/custom_widget/balance_page_custom_widget/balance_page_container_custom_widget.dart';
import 'package:digital_wallet_ui/custom_widget/balance_page_custom_widget/balance_page_custom_box_widget.dart';
import 'package:digital_wallet_ui/utils/app_assets.dart';
import 'package:digital_wallet_ui/utils/app_color.dart';
import 'package:digital_wallet_ui/utils/app_string.dart';
import 'package:digital_wallet_ui/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'menu_page_screens.dart';
class BalanceHomeScreens extends StatelessWidget {
  const BalanceHomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ///Background color
        backgroundColor: AppColor.balanceBody,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 1,right: 1,),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// balance text
                   Text(AppString.balanceText,
                     style: recentText,
                   ),
                    SizedBox(height: 10,),
                    /// amount text
                    Text(AppString.amount,
                    style: amouttext
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                /// page box custom widget
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                BalancePageCustomBoxWidget(color: AppColor.transferBoxColor, photo: AppImage.transferIcon, name: AppString.transfer),
                BalancePageCustomBoxWidget(color: AppColor.topupBoxColor, photo: AppImage.topupIcon, name: AppString.topup),
                BalancePageCustomBoxWidget(color: AppColor.bilBoxColor, photo: AppImage.billIcon, name: AppString.bill),
                BalancePageCustomBoxWidget(color: AppColor.moreBoxColor, photo: AppImage.moreIcon, name: AppString.more),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: 420,
                height: 440,
                decoration: BoxDecoration(
                  color: AppColor.containerColor,
                  //color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// transactions text
                      Text(AppString.transactions,
                      style: mediumText.copyWith(fontSize: 14),
                      ),

                      SizedBox(height: 20),
                     BalancePageContainerCustomWidget(boxColor: AppColor.grocery, boxPhoto: AppImage.groceryIcon, product: AppString.groceryProduct, productName: AppString.productName),
                      Spacer(),
                     BalancePageContainerCustomWidget(boxColor: AppColor.entertainmeant, boxPhoto: AppImage.entartaimentIcon, product: AppString.entertainment, productName: AppString.product1),
                      Spacer(),
                     BalancePageContainerCustomWidget(boxColor: AppColor.equiopments, boxPhoto: AppImage.equiampentIcon, product: AppString.equipments, productName: AppString.product2),
                      Spacer(),
                     BalancePageContainerCustomWidget(boxColor: AppColor.officeItems, boxPhoto: AppImage.offerIcon, product: AppString.officeItems, productName: AppString.product3),

                     Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(AppImage.homeIcon),
                          InkWell(
                            /// Menu screens push
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPageScreens()));
                              },
                              child: Image.asset(AppImage.categoryIcon),
                          ),
                          Image.asset(AppImage.graphIcon),
                          Image.asset(AppImage.settingIcon),
                        ],
                      )


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.balanceBody,

    );
  }
}
