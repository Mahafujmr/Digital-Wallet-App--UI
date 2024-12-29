import 'package:flutter/material.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
class WithdrawPageCustomWidget extends StatelessWidget {
  final Color smallBoxColor;
  final String photo;
  final String accountType;
  const WithdrawPageCustomWidget({super.key,
    required this.smallBoxColor,
    required this.photo,
    required this.accountType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 315,
      height: 84,
      decoration: BoxDecoration(
        color: AppColor.appBarColor,
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(width: 1,color: Color(0xff08A0F7),),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: smallBoxColor,
            ),
            /// personal account icon
            child: Image.asset(photo),
          ),
          SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// text
                Text(accountType,
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
              color: AppColor.borderBoxColor,
              border: Border.all(width: 1,color: Color(0xff08A0F7),),
            ),
          ),
        ],
      ),
    );
  }
}
