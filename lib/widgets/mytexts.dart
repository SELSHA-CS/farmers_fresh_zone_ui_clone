import 'package:flutter/material.dart';
class MyText extends StatelessWidget {
  const MyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text("Shop By Category",
              style: TextStyle(fontWeight: FontWeight.bold))),
    );
  }
}
