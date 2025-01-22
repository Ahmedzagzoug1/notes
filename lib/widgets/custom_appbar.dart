import 'package:flutter/material.dart';
import 'package:note/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  const CustomAppbar({super.key, required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomIcon(icon:icon,onPressed: onPressed,)
      ],
    );
  }
}
