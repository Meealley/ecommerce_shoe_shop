import 'package:flutter/material.dart';

import '../theme/app_textstyle.dart';

class CheckOutButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;

  const CheckOutButton({
    super.key,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Center(
            child: Text(
              label,
              style: appstyle(20, Colors.white, FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
