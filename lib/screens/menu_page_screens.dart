import 'package:digital_wallet_ui/custom_widget/menu_page_custom_widget.dart';
import 'package:digital_wallet_ui/screens/payment_summary_screens.dart';
import 'package:digital_wallet_ui/screens/send_money_screens.dart';
import 'package:digital_wallet_ui/screens/withdraw_screens.dart';
import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
import 'contacts_screens.dart';
import 'electricity_bill_screens.dart';
import 'internet_data_page_screens.dart';
class MenuPageScreens extends StatelessWidget {
  const MenuPageScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// appbar text
        title: Text(AppString.menu,
          style: appBarText,
        ),
        centerTitle: true,
        /// arrow icons
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(AppImage.arrowIcon),
            ),
        ),
        backgroundColor: AppColor.menuBar,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5,top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right:20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.textField,
                    hintText: AppString.searchText,
                    hintStyle: searchText,
                    suffixIcon: Image.asset(AppImage.searchIcon),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.shortcuts,
                    style: titleText.copyWith(fontSize: 14),
                    ),
                    Text(AppString.customize,
                    style: cunstomizeText,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 375,
                height: 256,
                decoration: BoxDecoration(
                  color: AppColor.container
                ),
                child: Column(

                  children: [
                    InkWell(
                        onTap:(){
                          /// send money page push
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SendMoneyScreens()));
              },
                        child: MenuPageCustomWidget(color: AppColor.transferBoxColor, photo: AppImage.sendMoneyIcon, text: AppString.sendMoney)),
                    Image.asset(AppImage.lineIcon),
                    InkWell(
                        onTap: (){
                          /// internet data page push
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetDataPageScreens()));
                        },
                        child: MenuPageCustomWidget(color: AppColor.topupBoxColor, photo: AppImage.topupIcon, text: AppString.topupText)),
                    Image.asset(AppImage.lineIcon),
                    InkWell(
                        onTap: (){
                          /// Electricity bill page push
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ElectricityBillScreens()));
                        },
                        child: MenuPageCustomWidget(color: AppColor.bilBoxColor, photo: AppImage.bilPayIcon, text: AppString.bilPay)),
                    Image.asset(AppImage.lineIcon),
                    InkWell(
                        onTap: (){
                          /// withdraw page push
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawScreens()));
                        },
                        child: MenuPageCustomWidget(color: AppColor.moreBoxColor, photo: AppImage.withdrawIcon, text: AppString.withdraw)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(AppString.otherMenu,
                style: titleText.copyWith(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 375,
                height: 277,
                decoration: BoxDecoration(
                  color: AppColor.container,
                  borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  ),
                ),
                child:  Column(

                  children: [
                    InkWell(
                        onTap:(){
                          /// payment Summary page push
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentSummaryScreens()));
              },
                        child: MenuPageCustomWidget(color: AppColor.historyBoxColor, photo: AppImage.historyIcon, text: AppString.history)),
                    Image.asset(AppImage.lineIcon),
                    InkWell(
                        onTap: (){
                          /// contacts page push
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactsScreens()));
                        },
                        child: MenuPageCustomWidget(color: AppColor.requestBoxColor, photo: AppImage.paymentIcon, text: AppString.request)),
                    Image.asset(AppImage.lineIcon),
                    MenuPageCustomWidget(color: AppColor.settingsBoxColor, photo: AppImage.settingIcon, text: AppString.setting),
                    Image.asset(AppImage.lineIcon),
                    MenuPageCustomWidget(color: AppColor.helpBoxColor, photo: AppImage.helpIcon, text: AppString.help),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.menuBar,
    );
  }
}
