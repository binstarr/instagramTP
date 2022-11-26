import 'package:flutter/material.dart';

import '../components/search_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),
            _buildSearchFiled(),
            SizedBox(height: 10,),
            Expanded(child: SearchList()),
          ],
        ),

      ),
    );
  }

  Widget _buildSearchFiled() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFefefef),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                borderSide: BorderSide.none),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.grey,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: '검색'),
      ),
    );
  } // end of _buildSearchFiled


}
