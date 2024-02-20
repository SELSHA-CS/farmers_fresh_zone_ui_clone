import 'package:farmers_fresh_zone_ui_clone/widgets/fieldsets.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mycardss.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mycarousel.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mygrids.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mytext2.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/mytexts.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/productgrid.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/searchbox.dart';
import 'package:farmers_fresh_zone_ui_clone/widgets/viewbtn.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var images = [
    "assets/farmers_images/1.jpg",
    "assets/farmers_images/2.jpg",
    "assets/farmers_images/3.jpg",
    "assets/farmers_images/4.jpg",
    "assets/farmers_images/5.jpg",
    "assets/farmers_images/6.jpg",
    "assets/farmers_images/7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text("FARMERS FRESH ZONE"),
        actions: const [
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
          title: const SearchBox(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCards1(),
            MyCarousel(images: images),
            const FieldSets(),
            MyText(text: 'Shop By Category',),
            MyGrids(),
            const MyText2(),
            ProductGrid(),
            ViewButton(),
          ],
        ),
      ),
    );
  }
}