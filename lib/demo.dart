import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CakeFactory extends StatelessWidget {
  CakeFactory({super.key});

  Color textColor = const Color(0xFF216760);
  Color neuroColor = const Color(0xFFEBEBEB);

  List<String> items = [
    "asset/1.png",
    "asset/2.png",
    "asset/3.png",
    "asset/1.png",
    "asset/2.png",
    "asset/3.png"
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                    height: height * 0.06,
                    width: double.infinity,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shadowDarkColor: const Color(0xFFDADADA),
                          color: neuroColor,
                          intensity: 25,
                          depth: 5),
                      child: Row(children: <Widget>[
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.menu)),
                        const Expanded(
                            child: Center(
                                child: Text(
                          "Cake Factory",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert)),
                      ]),
                    )),
                SizedBox(
                  height: height * 0.02,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TopItemHorizontalList(width: width, textColor: textColor),
                      ItemSlider(height: height, neuroColor: neuroColor),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        child: GridView.builder(
                            itemCount: items.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: width * 0.06,
                                    crossAxisSpacing: width * 0.06),
                            itemBuilder: (context, index) {
                              return SizedBox(
                                child: Neumorphic(
                                  padding: EdgeInsets.all(width * 0.03),
                                  style: NeumorphicStyle(
                                      lightSource: LightSource.bottomRight,
                                      shadowDarkColor: const Color(0xFFD6D6D6),
                                      shadowLightColor: Colors.white,
                                      color: const Color(0xFFE1E1E1)
                                          .withOpacity(0.9),
                                      intensity: 20,
                                      depth: 10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: width * 0.21,
                                              width: width * 0.21,
                                              child: Neumorphic(
                                                padding: EdgeInsets.all(
                                                    width * 0.05),
                                                style: const NeumorphicStyle(
                                                    shape:
                                                        NeumorphicShape.convex,
                                                    intensity: 10,
                                                    depth: 6,
                                                    color: Color(0xFFEBEBEB),
                                                    shadowDarkColor:
                                                        Color(0xFFBDBDBD),
                                                    boxShape: NeumorphicBoxShape
                                                        .circle()),
                                                child: Image.asset(
                                                  items[index],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: width * 0.027,
                                                      width: width * 0.027,
                                                      decoration: BoxDecoration(
                                                          color: index % 2 != 0
                                                              ? Colors.red
                                                              : Colors.green,
                                                          shape:
                                                              BoxShape.circle),
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    Text(
                                                      index % 2 != 0
                                                          ? "Non-Veg"
                                                          : "Veg",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.025,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: index % 2 != 0
                                                              ? Colors.red
                                                              : Colors.green),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: width * 0.02,
                                                ),
                                                Text(
                                                  "\$148.0",
                                                  style: TextStyle(
                                                      fontSize: width * 0.03,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  height: width * 0.02,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    const Text(
                                                      "5",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      size: width * 0.04,
                                                      color: Color(0xFFDABC38),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ))
                                          ],
                                        ),
                                        SizedBox(
                                          height: width * 0.08,
                                          width: double.infinity,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                              shape: NeumorphicShape.convex,
                                              intensity: 10,
                                              depth: 6,
                                              color: Color(0xFFEBEBEB),
                                              shadowDarkColor:
                                                  Colors.grey.withOpacity(0.6),
                                            ),
                                            child: Center(
                                                child: Text(
                                              "Carrot Cake",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                          ),
                                        ),
                                      ]),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          )),
    );
  }
}

class ItemSlider extends StatefulWidget {
  const ItemSlider({
    super.key,
    required this.height,
    required this.neuroColor,
  });

  final double height;
  final Color neuroColor;

  @override
  State<ItemSlider> createState() => _ItemSliderState();
}

class _ItemSliderState extends State<ItemSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<String> items = [
    "asset/1.png",
    "asset/2.png",
    "asset/3.png",
    "asset/1.png",
    "asset/2.png",
    "asset/3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return Column(
                children: [
                  SizedBox(
                    height: widget.height * 0.2,
                    width: double.infinity,
                    child: Neumorphic(
                      padding: EdgeInsets.all(widget.height * 0.04),
                      style: NeumorphicStyle(
                          shadowDarkColor: const Color(0xFFDADADA),
                          shadowLightColor: Color(0xFFFDFBFB),
                          color: widget.neuroColor,
                          intensity: 25,
                          depth: 5),
                      child: Image.asset(items[itemIndex]),
                    ),
                  ),
                ],
              );
            },
            options: CarouselOptions(
              height: widget.height * 0.22,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              disableCenter: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              scrollDirection: Axis.horizontal,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}

class TopItemHorizontalList extends StatelessWidget {
  TopItemHorizontalList({
    super.key,
    required this.width,
    required this.textColor,
  });

  final double width;
  final Color textColor;

  List<String> items = [
    "asset/1.png",
    "asset/2.png",
    "asset/3.png",
    "asset/1.png",
    "asset/2.png",
    "asset/3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * 0.37,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              width: width * 0.24,
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: Column(
                children: [
                  SizedBox(
                    height: width * 0.23,
                    width: width * 0.22,
                    child: Neumorphic(
                      padding: EdgeInsets.all(width * 0.035),
                      style: const NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          intensity: 10,
                          depth: 6,
                          color: Color(0xFFEBEBEB),
                          shadowDarkColor: Color(0xFFBDBDBD),
                          boxShape: NeumorphicBoxShape.circle()),
                      child: Image.asset(items[index]),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.02,
                  ),
                  Text(
                    "Pound Cake",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.03,
                        color: textColor),
                  )
                ],
              ),
            );
          }),
    );
  }
}
