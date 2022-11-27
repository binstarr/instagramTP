import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopWishListScreen extends StatelessWidget {
  const ShopWishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "위시리스트",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(FontAwesomeIcons.cartShopping)),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
        ],
        elevation: 0.2,
      ),
      body:
      _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(FontAwesomeIcons.bookmark, size: 50)),
            SizedBox(height: 30),
            Text(
              "내 위시리스트에 추가",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "다시 보고 싶은 제품을 저장해보세요. \n 위시리스트에 있는 제품은 회원님만 볼 수 있습니다.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
