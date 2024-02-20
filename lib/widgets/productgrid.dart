import 'package:farmers_fresh_zone_ui_clone/screens/ddata.dart';
import 'package:flutter/material.dart';
import 'package:easy_rich_text/easy_rich_text.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: .7),
        itemCount: products.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(products[index]['img'], fit: BoxFit.fill,)),
                    Text(products[index]['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Text("${products[index]['amount']}  ${products[index]['price']}"),
                      EasyRichText("${products[index]['amount']}  ${products[index]['price']}", patternList: [
                        EasyRichTextPattern(targetString: "${products[index]['price']}", style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.grey, decorationThickness: 2
                        ), 
                        )
                      ],),
                      EasyRichText("${products[index]['offer']}", patternList: [
                        EasyRichTextPattern(targetString: "${products[index]['offer']}", style: TextStyle(
                          color: Colors.red
                        ))
                      ],)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(products[index]['kg']),
                      ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green
                        ),
                        child: const Text("ADD", style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}