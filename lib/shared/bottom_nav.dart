import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomNav extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;

  const BottomNav({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 32,
        width: 32,
        child: Icon(
          icon,
          color: AppConst.kLight,
        ),
      ),
    );
  }
}
