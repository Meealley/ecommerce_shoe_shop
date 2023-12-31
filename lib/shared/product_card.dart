import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final String id;
  final String category;
  final String price;
  final String image;

  const ProductCard(
      {super.key,
      required this.name,
      required this.category,
      required this.price,
      required this.image,
      required this.id});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 0.6,
              offset: Offset(1, 1),
            )
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.image),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: GestureDetector(
                        onTap: null,
                        child: const Icon(
                          MaterialCommunityIcons.heart_circle_outline,
                          size: 28,
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: appstyle(
                        25,
                        Colors.black,
                        FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.category,
                      style: appstyle(
                        17,
                        Colors.grey,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: appstyle(23, Colors.green, FontWeight.bold),
                      ),
                      Text(
                        "Colors",
                        style: appstyle(19, Colors.grey, FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ChoiceChip(
                        label: const Text(" "),
                        selected: selected,
                        visualDensity: VisualDensity.compact,
                        selectedColor: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
