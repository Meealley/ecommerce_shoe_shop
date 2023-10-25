import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNav(),
                BottomNav(),
                BottomNav(),
                BottomNav(),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          "MainScreen",
          style: appstyle(33, AppConst.kBlueLight, FontWeight.bold),
        ),
      ),
    );
  }
}
