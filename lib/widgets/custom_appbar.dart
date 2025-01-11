import 'package:flutter/material.dart';
import 'package:note/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppbar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomIcon(icon:icon)
      ],
    );
  }
}
