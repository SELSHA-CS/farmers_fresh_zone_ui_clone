import 'package:flutter/material.dart';
class MyText extends StatelessWidget {
  final String text;
  const MyText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(text,style: TextStyle(fontWeight: FontWeight.bold))),
    );
  }
}
