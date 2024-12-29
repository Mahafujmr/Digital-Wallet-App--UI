import 'package:flutter/material.dart';
import '../utils/app_text_style.dart';
class MenuPageCustomWidget extends StatelessWidget {
  final Color color;
  final String photo;
  final String text;
  const MenuPageCustomWidget({super.key,
    required this.color,
    required this.photo,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 10,top: 13),
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(photo),
          ),
        ),
        Text(text,
          style: titleText.copyWith(color: Color(0xff273240)),
        ),
      ],
    );
  }
}
