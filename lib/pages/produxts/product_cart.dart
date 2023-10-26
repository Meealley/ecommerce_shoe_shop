import 'package:ecommerce_shop/shared/stagger_tile.dart';
import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../model/sneakers_model.dart';
import '../../services/helper.dart';
import '../../shared/product_card.dart';
import 'latest_shoes.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key});

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  late Future<List<Sneakers>> _male;
  late Future<List<Sneakers>> _female;
  late Future<List<Sneakers>> _kids;

  void getMale() {
    _male = Helper().getMaleSneakers();
  }

  void getFemale() {
    _female = Helper().getFemaleSneakers();
  }

  void getKids() {
    _kids = Helper().getKidsSneakers();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMale();
    getFemale();
    getKids();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(13, 40, 0, 0),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/top_image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(6, 12, 16, 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              FontAwesome.sliders,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.transparent,
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: AppConst.kLight,
                      labelStyle:
                          appstyle(24, AppConst.kLight, FontWeight.bold),
                      unselectedLabelColor: Colors.grey.withOpacity(0.3),
                      tabs: [
                        Tab(
                          text: "Men Shoes",
                        ),
                        Tab(
                          text: "Women Shoes",
                        ),
                        Tab(
                          text: "Kids Shoes",
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: 16,
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    LatestShoes(male: _male),
                    LatestShoes(male: _female),
                    LatestShoes(male: _kids),

                    // Container(
                    //   height: 500,
                    //   width: 300,
                    //   color: Colors.red,
                    // ),
                    // Container(
                    //   height: 500,
                    //   width: 300,
                    //   color: Colors.green,
                    // ),
                    // Container(
                    //   height: 500,
                    //   width: 300,
                    //   color: Colors.pink,
                    // ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
