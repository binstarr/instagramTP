import 'package:instagram/model/shop_item.dart';

class Shop {
  var logo;
  var name;
  var info;
  var follow;
  List<ShopItem> shopItems;

  Shop({required this.logo,
    required this.name,
    required this.info,
    required this.follow,
    required this.shopItems});
}

List<Shop> shops = [
  Shop(
      logo: "assets/shop_img/shop_logo1.jpg",
      name: "thuf_seoul",
      info: "tell me how u feel",
      follow: "1만명",
      shopItems: thufSeoulItems),

  Shop(
      logo: "assets/shop_img/shop_logo2.jpg",
      name: "hookka.hookka.studio",
      info: "후카후카스튜디오",
      follow: "5.8만명",
      shopItems: hookaItems),
  Shop(
      logo: "assets/shop_img/shop_logo3.jpg",
      name: "horientalbeforemoon",
      info: "ORIENTAL BEFORE MOON",
      follow: "3.2천명",
      shopItems: horientalbeforemoonItmes),
  Shop(
      logo: "assets/shop_img/shop_logo4.jpg",
      name: "kkotbat",
      info: "꽃밭스토어",
      follow: "6만명",
      shopItems: kkotbatItems),
];
