import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/shop_wishList_screen.dart';
import '../components/shopping_list.dart';

class ShopMainScreen extends StatelessWidget {
  const ShopMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Column(
        children: [
          _buildSearchFiled(),
          _buildVieonButton(),
          Expanded(child: ShoppoingList()),
        ],
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Text(
          "Shop",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ShopWishListScreen();
            }));
          },
          icon: Icon(
            FontAwesomeIcons.calendar,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {
            showDefaultHeightModalBottomSheet(context);
          },
          icon: Icon(
            FontAwesomeIcons.bars,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  void showDefaultHeightModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text("회원님의 계정",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 25),
                  Row(children: [
                    Icon(FontAwesomeIcons.bell),
                    SizedBox(width: 10),
                    Text("쇼핑 활동"),
                  ],),
                  Divider(thickness: 1.5),
                  SizedBox(height: 10),
                  Text("Instagram Shop",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  SizedBox(height: 15),
                  Text("동영상"),
                ],
              ),
            ),
          )
        );
      },
    );
  }

  Widget _buildSearchFiled() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFefefef),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide.none),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.grey,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: '검색'),
      ),
    );
  }

  Widget _buildVieonButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFefefef),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            "동영상",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
