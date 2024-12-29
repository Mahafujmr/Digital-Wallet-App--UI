import 'package:digital_wallet_ui/custom_widget/withdraw_page_custom_widget.dart';
import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
class WithdrawScreens extends StatelessWidget {
  const WithdrawScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// appbar text
        title: Text(AppString.withdraw,
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
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  /// text
                  Text(AppString.withdrawAmount,
                  style: amountTextStyle.copyWith(color: Color(0xff2C2C63),),
                  ),
                  /// text
                  Text(AppString.checkBalance,
                  style: recentText.copyWith(color: Color(0xff082431),
                      fontSize: 14,letterSpacing: 1.0),

                  ),
                  SizedBox(height: 60),
                  /// text
                  Text(AppString.bankAccount,
                  style: recentText.copyWith(color: Color(0xff082431),fontSize: 16),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            /// container
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 315,
              height: 84,
              decoration: BoxDecoration(
                color: AppColor.appBarColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1,color: Color(0xff08A0F7),),
              ),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: AppColor.smallBoxColor,
                    ),
                    /// personal account icon 
                    child: Image.asset(AppImage.personalAccountIcon),
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// text
                        Text(AppString.personalAccount,
                        style: cunstomizeText.copyWith(color: Color(0xff2C2C63),
                        letterSpacing: 1.0
                        ),
                        ),
                        /// text
                        Text(AppString.mobileNumber,
                        style: titleText.copyWith(color: Color(0xff082431),
                        letterSpacing: 1.0
                        ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.withdrawBoxColor
                    ),
                    child: Image.asset(AppImage.lineMcQIcon),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15),
            /// withdraw page custom widget
            WithdrawPageCustomWidget(smallBoxColor: AppColor.busnessBoxColor, photo:AppImage.busnessAccountIcon, accountType: AppString.businessAccount),
            SizedBox(height: 15),
            WithdrawPageCustomWidget(smallBoxColor: AppColor.familyBoxColor, photo:AppImage.familyAccountIcon, accountType: AppString.familyAccount),
            SizedBox(height: 70),
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
    );
  }
}
