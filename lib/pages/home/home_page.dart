import 'package:flutter/material.dart';

import '../../theme/app_textstyle.dart';
import 'widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
