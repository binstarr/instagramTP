import 'package:flutter/material.dart';

import '../model/shop.dart';
import '../model/shop_item.dart';

class ShoppingListDetail extends StatelessWidget {
  const ShoppingListDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // 이미지 url
    // 옷가게
    var shopItems = thufSeoulItems;



    return Expanded(
      child: ListView(
        children: [
          Image.asset(thufSeoulItems[0].image),
          Text(shopItems[0].image),
        ],
      ),
    );
  }
}
// shops[0]
  // shops[0] -- shopItems
    // shopItems -->  thufSeoulItems