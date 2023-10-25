import 'package:flutter/material.dart';

import '../../theme/app_textstyle.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Cart page",
          style: appstyle(18, Colors.pink, FontWeight.normal),
        ),
      ),
    );
  }
}
