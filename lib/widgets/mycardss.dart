import 'package:farmers_fresh_zone_ui_clone/screens/dummydata.dart';
import 'package:flutter/material.dart';
class MyCards1 extends StatelessWidget {
  const MyCards1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(cards.length, (index) => Card(
            color: Colors.green[200],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 50,
                width: 150,
                child: Center(
                  child: Text(cards[index]['name'], style: const TextStyle(fontWeight: FontWeight.bold),),
                ),
                ),
            ),
            ),
          ),
        ),
      ),
    );
  }
}