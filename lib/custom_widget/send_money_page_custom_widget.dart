import 'package:flutter/material.dart';
import '../utils/app_text_style.dart';
class SendMoneyPageCustomWidget extends StatelessWidget {
  final String number;
  final String title;
  final String subTitle;
  const SendMoneyPageCustomWidget({super.key,
     required this.number,
     required this.title,
     required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(number,
            style: numberTextStyle),
        Text(title,
            style: numberTextStyle),
        Text(subTitle,
            style: numberTextStyle),
      ],
    );
  }
}
