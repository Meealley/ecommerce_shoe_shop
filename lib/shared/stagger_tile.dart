import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

// import '../model/sneakers_model.dart';
// import '../services/helper.dart';

class StaggerTile extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String price;

  const StaggerTile(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price});

  @override
  State<StaggerTile> createState() => _StaggerTileState();
}

class _StaggerTileState extends State<StaggerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: widget.imageUrl,
              fit: BoxFit.fill,
              // width: 40,
            ),
            Container(
              padding: const EdgeInsets.only(top: 12),
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: appstyle(
                      18,
                      Colors.black,
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.price,
                    style: appstyle(
                      18,
                      Colors.black,
                      FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
