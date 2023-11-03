import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "My Favourite",
          style: appstyle(20, Colors.black, FontWeight.w600),
        ),
      ),
    );
  }
}
