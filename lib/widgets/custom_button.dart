import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Text('Save',
          style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ) ,
      )
      )),
    );
  }
}