import 'package:ecommerce_shop/providers/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import 'bottom_nav.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SafeArea(
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
                  icon: mainScreenNotifier.pageIndex == 0
                      ? Icons.home
                      : Icons.home_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 0;
                    print("Home");
                  },
                ),
                BottomNav(
                  icon: mainScreenNotifier.pageIndex == 1
                      ? Icons.search
                      : Icons.search_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                ),
                BottomNav(
                  icon: mainScreenNotifier.pageIndex == 2
                      ? Icons.favorite
                      : Icons.favorite_outline_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                ),
                BottomNav(
                  icon: mainScreenNotifier.pageIndex == 3
                      ? Ionicons.cart
                      : Ionicons.cart_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                ),
                BottomNav(
                  icon: mainScreenNotifier.pageIndex == 4
                      ? Ionicons.person
                      : Ionicons.person_outline,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 4;
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
