// import 'dart:js';

// import 'dart:js';

import 'package:ecommerce_shop/pages/home/home_screen.dart';
import 'package:ecommerce_shop/providers/home_screen_provider.dart';
import 'package:ecommerce_shop/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('cart_box');
  await Hive.openBox("fav_box");
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MainScreenNotifier(),
    ),
    ChangeNotifierProvider(create: (context) => ProductNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
