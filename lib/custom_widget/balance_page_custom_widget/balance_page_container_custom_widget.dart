import 'package:flutter/material.dart';
import '../../utils/app_string.dart';
import '../../utils/app_text_style.dart';
class BalancePageContainerCustomWidget extends StatelessWidget {
  final Color boxColor;
  final String boxPhoto;
  final String product;
  final String productName;

  const BalancePageContainerCustomWidget({super.key,
    required this.boxColor,
    required this.boxPhoto,
    required this.product,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(boxPhoto),
              )
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //  // mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Text(product,
            //       style:productNameText,
            //     ),
            //     SizedBox(width: 60),
            //     Text(AppString.amountbill,style: productNameText,),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Text(AppString.date,
            //         style: titleNameTextStyle
            //     ),
            //     SizedBox(width: 65),
            //     Text(productName,style: titleNameTextStyle,),
            //   ],
            // ),
            Text(product,
              style:productNameText,
            ),
            //SizedBox(width: 60),
            Text(AppString.date,style: titleNameTextStyle,),
          ],
        ),
        Spacer(),//SizedBox(width: 90),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(AppString.amountbill,
              style:productNameText,
            ),
            // SizedBox(width: 60),
            Text(productName,style: titleNameTextStyle.copyWith(color: Color(0xff2C3A4B),
            fontWeight: FontWeight.w300,
              letterSpacing: 0.3
            ),),
          ],
        ),

      ],
    );
  }
}
