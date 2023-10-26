import 'package:ecommerce_shop/shared/category_btn.dart';
import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:ecommerce_shop/theme/custom_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../model/sneakers_model.dart';
import '../../services/helper.dart';
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

  List<String> brand = [
    'assets/images/adidas.png',
    'assets/images/gucci.png',
    'assets/images/jordan.png',
    'assets/images/nike.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(13, 40, 0, 0),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/top_image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(6, 12, 16, 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              filter();
                            },
                            child: const Icon(
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
                      tabs: const [
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
                    left: 10,
                    right: 10),
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

  Future<dynamic> filter() {
    double value = 1;
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.white54,
      context: context,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.74,
        decoration: BoxDecoration(
          color: Colors.grey.shade500,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 8,
              width: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.black),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  const CustomSpacer(),
                  Text(
                    "Filter Products",
                    style: appstyle(23, Colors.black, FontWeight.normal),
                  ),
                  const CustomSpacer(),
                  Text(
                    "Gender",
                    style: appstyle(19, Colors.black, FontWeight.normal),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryBtn(
                        label: "Men",
                        buttonColor: Colors.black,
                        onPress: () {
                          print("clicked men's shoe");
                        },
                      ),
                      CategoryBtn(
                        label: "Women",
                        buttonColor: Colors.grey.shade800,
                        onPress: () {
                          print("clicked men's shoe");
                        },
                      ),
                      CategoryBtn(
                        label: "Kid's",
                        buttonColor: Colors.grey.shade800,
                        onPress: () {
                          print("clicked men's shoe");
                        },
                      ),
                    ],
                  ),
                  const CustomSpacer(),
                  Text(
                    "Category",
                    style: appstyle(19, Colors.black, FontWeight.normal),
                  ),
                  Row(
                    children: [
                      CategoryBtn(
                        label: "Shoes",
                        buttonColor: Colors.black,
                        onPress: () {
                          print("clicked men's shoe");
                        },
                      ),
                      CategoryBtn(
                        label: "Apparel",
                        buttonColor: Colors.grey.shade800,
                        onPress: () {
                          print("clicked men's shoe");
                        },
                      ),
                      CategoryBtn(
                        label: "Accessories",
                        buttonColor: Colors.grey.shade800,
                        onPress: () {
                          print("clicked men's shoe");
                        },
                      ),
                    ],
                  ),
                  const CustomSpacer(),
                  Text(
                    "Price",
                    style: appstyle(19, Colors.black, FontWeight.normal),
                  ),
                  Slider.adaptive(
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                    thumbColor: Colors.black,
                    value: value,
                    label: value.toString(),
                    secondaryTrackValue: 200,
                    max: 500,
                    divisions: 50,
                    onChanged: (double value) {},
                  ),
                  const CustomSpacer(),
                  Text(
                    'Brand',
                    style: appstyle(19, Colors.black, FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 80,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12))),
                            child: Image.asset(
                              brand[index],
                              height: 60,
                              // fit: BoxFit.contain,
                              width: 80,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
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
