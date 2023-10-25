import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("BottomNavigationBar");
      },
      child: SizedBox(
        height: 32,
        width: 32,
        child: Icon(
          Icons.home,
          color: AppConst.kLight,
        ),
      ),
    );
  }
}
