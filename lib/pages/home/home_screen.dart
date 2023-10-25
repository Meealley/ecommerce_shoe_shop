import 'package:ecommerce_shop/pages/cart/cart_page.dart';
import 'package:ecommerce_shop/pages/favorite/favorite_page.dart';
import 'package:ecommerce_shop/pages/home/home_page.dart';
import 'package:ecommerce_shop/pages/profile/profile_page.dart';
import 'package:ecommerce_shop/pages/search/search_page.dart';
import 'package:ecommerce_shop/providers/home_screen_provider.dart';
import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import '../../shared/bottom_nav.dart';
import '../../shared/bottom_navbar.dart';

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
    // int pageIndex = 1;

    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: BottonNavBar(),
        );
      },
    );
  }
}
