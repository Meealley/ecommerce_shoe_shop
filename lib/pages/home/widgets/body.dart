// import 'package:cached_network/cached_network.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shop/theme/app_colors.dart';
import 'package:ecommerce_shop/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(13, 40, 0, 0),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/top_image.png'),
                  fit: BoxFit.fill),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 15),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr Luxury Shoes",
                    style:
                        appstyleWithHt(38, AppConst.kLight, FontWeight.bold, 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.transparent,
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: AppConst.kLight,
                    labelStyle: appstyle(24, AppConst.kLight, FontWeight.bold),
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
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.256),
            child: Container(
              padding: EdgeInsets.only(left: 12),
              child: TabBarView(controller: _tabController, children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.405,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.purple.shade300,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                          );
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
                                style: appstyle(
                                    18, Colors.black, FontWeight.normal),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Show all",
                                    style: appstyle(
                                        18, Colors.black, FontWeight.normal),
                                  ),
                                  Icon(Icons.arrow_right_sharp),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green),
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width * 0.30,
                              // child: Image.asset('assets/images/jordan.png'),
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://res.cloudinary.com/dvflv8rwy/image/upload/v1698309388/hrxseefagfdcx4zjnxef.webp',
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(), // Shown while the image is loading
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.red,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.purple,
                    )
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
