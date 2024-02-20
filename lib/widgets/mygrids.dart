import 'package:farmers_fresh_zone_ui_clone/screens/dummydata.dart';
import 'package:flutter/material.dart';
class MyGrids extends StatelessWidget {
  const MyGrids({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: cards.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Card(
            elevation: 9,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(cards[index]['img'], fit: BoxFit.fill,)),
                const SizedBox(height: 15,),
                Text(cards[index]['name'], style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}