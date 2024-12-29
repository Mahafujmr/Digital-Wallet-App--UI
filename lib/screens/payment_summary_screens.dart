import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
class PaymentSummaryScreens extends StatelessWidget {
  const PaymentSummaryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// appbar text
        title: Text(AppString.paymentSummaryText,
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
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 315,
                    height: 205,
                    decoration: BoxDecoration(
                      color: AppColor.appBarColor,
                      borderRadius: BorderRadius.only(
                       bottomRight: Radius.circular(30),
                       bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text(AppString.paymentSimplePackText,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2C2C63),
                            letterSpacing: 0.5,
                          ),
                          ),
                          SizedBox(height: 10),
                          Text(AppString.internetOfferText,
                          style: cunstomizeText.copyWith(color: Color(0xff2C3A4B),fontSize: 13,
                          letterSpacing: 0.5,
                          ),
                          ),
                          Text(AppString.internetOfferText1,
                            style: cunstomizeText.copyWith(color: Color(0xff2C3A4B),fontSize: 13,
                              letterSpacing: 0.6,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: -206,
                    child: Container(
                      width: 315,
                      height: 205,
                      decoration: BoxDecoration(
                       color: AppColor.appBarColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30)
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Text(AppString.thomasProfileName,
                            style: recentText.copyWith(color: Color(0xff273240),),
                            ),
                            SizedBox(height: 10),
                            Text(AppString.thomasIdNumber,
                            style: cunstomizeText.copyWith(color: Color(0xff2C3A4B),
                                fontWeight:FontWeight.w400 ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 275,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColor.appBarColor,
                                border: Border.all(width: 1,color: Colors.black26)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Image.asset(AppImage.promoCodeIcon),
                                    SizedBox(width: 15),
                                    Text(AppString.promoCodeText,
                                    style: mediumText.copyWith(color: Color(0xff2C3A4B),),
                                    ),
                                    SizedBox(width: 80),
                                    Text(AppString.applyText,
                                    style: mediumText.copyWith(color: Color(0xff32A7E2),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //SizedBox(height: 90),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: -30,
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColor.simplePackBoxColor1,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Image.asset(AppImage.starPackIcon),
                    ),
                  ),
                  Positioned(
                    bottom: -2,
                   child: Image.asset(AppImage.doteLineIcon),
                  ),
                  Positioned(
                    bottom: -18,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Image.asset(AppImage.thomas),
                        ],
                      )
                    ),
                  ),

                ],
              ),

            ),
            SizedBox(height: 208),
            Container(
              width: 315,
              height: 76,
              decoration: BoxDecoration(
                color: Color(0xffE2E2F0),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(AppString.totalText,
                    style: boxTextStyle.copyWith(fontSize: 16,
                    color: Color(0xff3F3F65),
                    ),
                    ),
                    SizedBox(width: 120),
                    Text(AppString.packAmount,
                      style: boxTextStyle.copyWith(
                        fontSize: 22,
                        color: Color(0xff3F3F65),
                      ),
                    )
                  ],
                ),
              ),
            ),
           SizedBox(height: 50),
            Container(
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
                  Text(AppString.boxPayText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                      letterSpacing: 2.0
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
