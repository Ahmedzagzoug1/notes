import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon,required this.onPressed});
  final IconData icon;
 final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.05)),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            
            size: 28,
          ),
          onPressed:onPressed,
        ),
      ),
    );
  }
}
