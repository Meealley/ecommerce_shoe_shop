import 'package:flutter/material.dart';

import '../../../theme/app_textstyle.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Cart page",
        style: appstyle(18, Colors.pink, FontWeight.normal),
      ),
    );
  }
}
