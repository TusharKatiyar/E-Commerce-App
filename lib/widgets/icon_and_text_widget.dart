import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final Color iconColor;

  IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.color,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 10),
        SmallText(
          text: text,
          color: color,
        )
      ],
    );
  }
}
