import 'package:flutter/material.dart';

import '../../theme/app_textstyle.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorite page",
          style: appstyle(
            18,
            Colors.pink,
            FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
