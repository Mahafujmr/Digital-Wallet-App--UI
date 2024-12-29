import 'package:flutter/material.dart';
import '../../utils/app_text_style.dart';
class BalancePageCustomBoxWidget extends StatelessWidget {
  final Color color;
  final String photo;
  final String name;
  const BalancePageCustomBoxWidget({super.key,
   required this.color,
    required this.photo,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(photo),
        ),
        SizedBox(height: 5),
        Text(name,
          style: boxTextStyle,
        )
      ],
    );
  }
}
