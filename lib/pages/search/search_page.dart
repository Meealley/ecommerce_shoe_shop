import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search page",
          style: appstyle(18, Colors.pink, FontWeight.normal),
        ),
      ),
    );
  }
}
