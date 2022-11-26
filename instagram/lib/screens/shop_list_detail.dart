import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/shop_item_screen.dart';

import '../model/shop.dart';
import '../model/shop_item.dart';
import '../model/shop_item_list.dart';

class ShopListDetail extends StatelessWidget {
  ShopListDetail({Key? key, required this.selectedShop}) : super(key: key);
  var selectedShop;

  @override
  Widget build(BuildContext context) {
    var shopSelected;
    if (selectedShop == 0 || selectedShop == 7) {
      shopSelected = thufSeoulItems;
    } else if (selectedShop == 1 || selectedShop == 3 || selectedShop == 4) {
      shopSelected = hookaItems;
    } else if (selectedShop == 2 || selectedShop == 5 || selectedShop == 6) {
      shopSelected = horientalbeforemoonItmes;
    }
    return Container(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "이 Shop 제품 더 보기",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "모두 보기",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    shopSelected.length,
                    (shop) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFFefefef)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.asset(
                                    shopSelected[shop].image,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    shopSelected[shop].title,
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(FontAwesomeIcons.bookmark, size: 10),
                                ],
                              ),
                              Text(
                                shopSelected[shop].price,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
