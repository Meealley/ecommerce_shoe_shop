import 'package:flutter/material.dart';

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.255,
      ),
    );
  }
}
