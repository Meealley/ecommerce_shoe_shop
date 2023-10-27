import 'package:ecommerce_shop/model/sneakers_model.dart';
import 'package:ecommerce_shop/pages/produxts/product_cart.dart';
import 'package:ecommerce_shop/pages/produxts/product_page.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_shop/shared/product_card.dart';

import 'newshoes.dart';

class HomeWidget extends StatelessWidget {
  final Future<List<Sneakers>> _male;
  final int tabIndex;

  const HomeWidget({
    super.key,
    required Future<List<Sneakers>> male,
    required this.tabIndex,
  }) : _male = male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.405,
          child: FutureBuilder<List<Sneakers>>(
            future: _male,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(
                  color: Colors.black,
                );
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else {
                final male = snapshot.data;
                return ListView.builder(
                  itemCount: male!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final shoe = snapshot.data![index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(
                                id: shoe.id, category: shoe.category),
                          ),
                        );
                      },
                      child: ProductCard(
                        id: shoe.id,
                        name: shoe.name,
                        category: shoe.category,
                        price: '₦${shoe.oldPrice}',
                        image: shoe.imageUrl[0],
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest  Shoes",
                    style: appstyle(18, Colors.black, FontWeight.normal),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductCart(
                            tabIndex: tabIndex,
                          ),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "Show all",
                          style: appstyle(18, Colors.black, FontWeight.normal),
                        ),
                        const Icon(Icons.arrow_right_sharp),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: FutureBuilder<List<Sneakers>>(
            future: _male,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(
                  color: Colors.black,
                );
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else {
                final male = snapshot.data;
                return ListView.builder(
                  itemCount: male!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final shoe = snapshot.data![index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NewShoes(
                        imageUrl: shoe.imageUrl[1],
                      ),
                    );
                  },
                );
              }
            },
          ),
        )
      ],
    );
  }
}
