import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/shopping_list.dart';

class ShopMainScreen extends StatelessWidget {
  const ShopMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: [
          _buildSearchFiled(),
          _buildVieonButton(),
          Expanded(child: ShoppoingList()),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        "Shop",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.calendar,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.bars,
            color: Colors.black,
          ),
        ),
      ],
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
