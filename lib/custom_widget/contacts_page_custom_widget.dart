
import 'package:flutter/material.dart';
import '../utils/app_text_style.dart';

class ContactsPageCustomWidget extends StatelessWidget {
  final String photo;
  final String name;
  final String title;
  const ContactsPageCustomWidget({super.key,
    required this.photo,
    required this.name,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(photo),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
              style: nameText,
            ),
            Text(title,
              style: titleText,
            ),
          ],
        )
      ],
    );
  }
}
