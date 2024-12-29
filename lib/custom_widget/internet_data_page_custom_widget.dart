import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_color.dart';
import '../utils/app_string.dart';
import '../utils/app_text_style.dart';
class InternetDataPageCustomWidget extends StatelessWidget {
  final Color boxColor;
  const InternetDataPageCustomWidget({super.key,required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 142,
      decoration: BoxDecoration(
        color: AppColor.appBarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: boxColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(AppImage.starPackIcon),
                ),
                SizedBox(width: 15),
                Text(AppString.simplePack,
                  style: cunstomizeText.copyWith(color: Color(0xff2C2C63),),
                ),
                SizedBox(width: 50),
                Text(AppString.packAmount,
                  style: cunstomizeText.copyWith(color: Color(0xff2C2C63),),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Image.asset(AppImage.lineIcon),
          SizedBox(height: 8),
          Text(AppString.internetGb,
            style: mediumText.copyWith(color: Color(0xff2C3A4B),),)
        ],
      ),
    );
  }
}
