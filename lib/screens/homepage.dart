import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/fieldsets.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mycardss.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mycarousel.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mygrids.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mytext2.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mytexts.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/productgrid.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/searchbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var names = [
    "VEGETABLES",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
    "OFFERS",
    "NUTRITION CHARGERS",
    "PACKED FLAVOURS",
    "GOURMET SALADS"
  ];

  var images = [
    "assets/farmers_images/1.jpg",
    "assets/farmers_images/2.jpg",
    "assets/farmers_images/3.jpg",
    "assets/farmers_images/4.jpg",
    "assets/farmers_images/5.jpg",
    "assets/farmers_images/6.jpg",
    "assets/farmers_images/7.jpg",
  ];

  var cards = [
    "assets/farmers_images/c2.jpg",
    "assets/farmers_images/c3.jpg",
    "assets/farmers_images/c4.jpg",
    "assets/farmers_images/c5.jpg",
    "assets/farmers_images/c1.jpg",
    "assets/farmers_images/c6.jpg",
    "assets/farmers_images/c7.jpg",
    "assets/farmers_images/c8.jpg",
  ];

  var products = [
    "assets/farmers_images/p1.jpg",
    "assets/farmers_images/p2.jpg",
    "assets/farmers_images/p3.jpg",
    "assets/farmers_images/p4.jpg",
    "assets/farmers_images/p5.jpg",
    "assets/farmers_images/p6.jpg",
    "assets/farmers_images/p7.jpg",
    "assets/farmers_images/p8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("FARMERS FRESH ZONE"),
        actions: [
          Row(
            children: [
              Icon(Icons.location_history),
              Text("Kochi"),
              Icon(Icons.arrow_drop_down_outlined),
            ],
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.lightGreen,
          title: SearchBox(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCards1(names: names),
            MyCarousel(images: images),
            FieldSets(),
            MyText(),
            MyGrids(cards: cards, names: names),
            MyText2(),
            ProductGrid(products: products)
          ],
        ),
      ),
    );
  }
}