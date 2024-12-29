import 'package:flutter/material.dart';
import '../utils/app_color.dart';
import '../utils/app_text_style.dart';
class ElectricityPageCustomWidget extends StatelessWidget {
  final String icons;
  final String name;
  final String title;
  const ElectricityPageCustomWidget({super.key,
    required this.icons,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color:  AppColor.smallBoxColor,
            borderRadius: BorderRadius.circular(13),
          ),
          /// icon
          child: Image.asset(icons),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
              style: titleText.copyWith(fontSize: 12),
            ),
            Text(title,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff2C2C63),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0
              ),
            ),
          ],
        ),
      ],
    );
  }
}
