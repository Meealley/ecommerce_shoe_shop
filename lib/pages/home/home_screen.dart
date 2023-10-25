import 'package:ecommerce_shop/pages/cart/cart_page.dart';
import 'package:ecommerce_shop/pages/favorite/favorite_page.dart';
import 'package:ecommerce_shop/pages/home/home_page.dart';
import 'package:ecommerce_shop/pages/profile/profile_page.dart';
import 'package:ecommerce_shop/pages/search/search_page.dart';
import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    int pageIndex = 1;

    return Scaffold(
      body: pageList[pageIndex],
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
                BottomNav(
                  icon: Icons.home,
                  onTap: () {
                    print("Home");
                  },
                ),
                BottomNav(
                  icon: Icons.search,
                  onTap: () {},
                ),
                BottomNav(
                  icon: Icons.favorite,
                ),
                BottomNav(
                  icon: Ionicons.cart,
                ),
                BottomNav(
                  icon: Ionicons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
