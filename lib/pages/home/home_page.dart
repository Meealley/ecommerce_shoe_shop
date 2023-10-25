import 'package:flutter/material.dart';

import '../../theme/app_textstyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home page",
          style: appstyle(18, Colors.pink, FontWeight.normal),
        ),
      ),
    );
  }
}
