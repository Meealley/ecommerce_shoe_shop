import 'package:ecommerce_shop/pages/cart/cart_page.dart';
import 'package:ecommerce_shop/pages/favorite/favorite_page.dart';
import 'package:ecommerce_shop/pages/produxts/product_cart.dart';
import 'package:ecommerce_shop/pages/profile/profile_page.dart';
import 'package:ecommerce_shop/pages/search/search_page.dart';
import 'package:ecommerce_shop/providers/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../shared/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> pageList = [
    const ProductCart(),
    const SearchPage(),
    const FavoritePage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    // int pageIndex = 1;

    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottonNavBar(),
        );
      },
    );
  }
}
