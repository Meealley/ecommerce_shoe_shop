import 'package:flutter/material.dart';

import '../../theme/app_textstyle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "ProfilePage",
          style: appstyle(18, Colors.pink, FontWeight.normal),
        ),
      ),
    );
  }
}
