import 'package:flutter/material.dart';

import '../../theme/app_textstyle.dart';
import 'widgets/body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Body(),
    );
  }
}
