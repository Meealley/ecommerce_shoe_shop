import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive/hive.dart';

import '../../../theme/app_textstyle.dart';

class Body extends StatelessWidget {
  final _cartBox = Hive.box('cart_box');
  Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<dynamic> cart = [];
    final cartData = _cartBox.keys.map((key) {
      final item = _cartBox.get(key);
      return {
        'key': key,
        'id': item['id'],
        'category': item['category'],
        'name': item['name'],
        'imageUrl': item['imageUrl'],
        'price': item['price'],
        'qty': item['qty'],
        'sizes': item['sizes'],
      };
    }).toList();

    cart = cartData.reversed.toList();

    return Padding(
      padding: EdgeInsets.all(8),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "My Cart",
              style: appstyle(32, Colors.black, FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                  itemCount: cart.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final data = cart[index];
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        child: Slidable(
                          key: ValueKey(0),
                          endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: null,
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: "Delete",
                              )
                            ],
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade100,
                                  spreadRadius: 5,
                                  blurRadius: 0.3,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: CachedNetworkImage(
                                          imageUrl: data['imageUrl'],
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(18),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 12, left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data['name'],
                                              style: appstyle(18, Colors.black,
                                                  FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              data['category'],
                                              style: appstyle(
                                                  15,
                                                  Colors.grey.shade600,
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  data['price'],
                                                  style: appstyle(
                                                    15,
                                                    Colors.grey.shade600,
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                                // Text(
                                                //   "${data['sizes']}",
                                                //   style: appstyle(
                                                //     15,
                                                //     Colors.grey.shade600,
                                                //      FontWeight.normal,
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        )
      ]),
    );
  }
}
