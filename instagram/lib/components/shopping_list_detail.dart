import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/shopping_list.dart';
import 'package:instagram/model/shop.dart';
import '../model/shop_item.dart';
import '../screens/shop_list_detail.dart';

class ShoppingListDetail extends StatelessWidget {
  const ShoppingListDetail({Key? key, required this.shopNum}) : super(key: key);

  final int shopNum;

  @override
  Widget build(BuildContext context) {
    var shopSelected;
    var itemNum;

    if (shopNum == 0) {
      shopSelected = thufSeoulItems;
      itemNum = 0;
    } else if (shopNum == 7) {
      shopSelected = thufSeoulItems;
      itemNum = 1;
    } else if (shopNum == 1) {
      shopSelected = hookaItems;
      itemNum = 0;
    } else if (shopNum == 3) {
      shopSelected = hookaItems;
      itemNum = 1;
    } else if (shopNum == 4) {
      shopSelected = hookaItems;
      itemNum = 2;
    } else if (shopNum == 2) {
      shopSelected = horientalbeforemoonItmes;
      itemNum = 0;
    } else if (shopNum == 5) {
      shopSelected = horientalbeforemoonItmes;
      itemNum = 2;
    } else if (shopNum == 6) {
      shopSelected = horientalbeforemoonItmes;
      itemNum = 1;
    }
    return Column(
      children: [
        Image.asset(
          shopSelected[itemNum].image,
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text(
                  shopSelected[itemNum].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.paperPlane, size: 20),
                    SizedBox(width: 15),
                    Icon(FontAwesomeIcons.bookmark, size: 20),
                  ],
                ),
              ]),
              SizedBox(height: 5),
              Text(
                shopSelected[itemNum].price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  print("웹사이트에서 보기 눌러짐");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "웹사이트에서 보기",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1),
        _buildinfo("설명"),
        Divider(thickness: 1),
        _buildinfo("제품 상세 정보"),
        Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shop 정보",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(shops[shopNum].logo),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            shops[shopNum].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(" · "),
                          Text("팔로우",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.blue,
                              )),
                        ],
                      ),
                      Text(shops[shopNum].info,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey)),
                      Text("팔로워 ${shops[shopNum].follow}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey)),
                      SizedBox(height: 5),
                      Text("비즈니스 정보보기",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Colors.indigo)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              _buildSeeShopButton(),
            ],
          ),
        ),
        Divider(thickness: 1),
        ShopListDetail(selectedShop: shopNum),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(shops[shopNum].logo),
            ),
          ),
          title: Text("쇼핑 계속하기"),
          subtitle: Text(shops[shopNum].name),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildinfo(var text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _buildSeeShopButton() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFFefefef),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Shop 보기",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
