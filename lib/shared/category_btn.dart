import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

class CategoryBtn extends StatelessWidget {
  final Color buttonColor;
  final String label;
  final void Function()? onPress;

  const CategoryBtn(
      {super.key,
      required this.buttonColor,
      required this.label,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MaterialButton(
        onPressed: onPress,
        child: Container(
          // padding: EdgeInsets.all(8),
          height: 35,
          width: MediaQuery.of(context).size.width * 0.255,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: buttonColor, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              label,
              style: appstyle(16, buttonColor, FontWeight.bold),
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
