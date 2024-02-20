import 'package:flutter/material.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        onPressed: (){},
        color: Colors.green,
        minWidth: 400,
        height: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text("VIEW MORE", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}