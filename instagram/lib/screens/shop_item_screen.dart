import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/model/shop.dart';

import '../components/shopping_list_detail.dart';

class ShopItemScreen extends StatelessWidget {
  const ShopItemScreen({Key? key, required this.selectedNum}) : super(key: key);

  final int selectedNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appbar(),
      body: Column(
        children: [
          Divider(thickness: 1),
          ShoppingListDetail(),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(shops[selectedNum].logo),
              radius: 18,
            ),
          ),
          SizedBox(width: 8),
          Text(shops[selectedNum].name,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 17,
              )),
        ],
      ),
      actions: [
        Icon(
          FontAwesomeIcons.ellipsis,
          color: Colors.black87,
          size: 20,
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
