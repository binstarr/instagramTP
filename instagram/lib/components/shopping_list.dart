import 'package:flutter/material.dart';
import 'package:instagram/screens/shop_item_screen.dart';

import '../model/shop.dart';
import '../model/shop_item_list.dart';

class ShoppoingList extends StatelessWidget {
  ShoppoingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selecteditem = 0;
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
          itemlists.length,
          (item) => Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("$context 눌러짐");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopItemScreen(selectedNum: _selecteditem)));
                      _selecteditem = item;
                      print(_selecteditem);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: Image.asset(
                        itemlists[item].image,
                        width: double.infinity,
                        height: 194,
                      ),
                    ),
                  ),
                ],
              )),
    );
  }
}
