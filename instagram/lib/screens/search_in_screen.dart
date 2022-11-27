import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/model/search_img_list.dart';

import '../components/circle_Image.dart';

class SearchInScreen extends StatelessWidget {
  const SearchInScreen({Key? key, required this.selectedNum}) : super(key: key);
  final selectedNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [
          Divider(thickness: 1, color: Color(0xFFefefef)),
          // SizedBox(height: 10,),
          _searchInpage(),
          SizedBox(
            height: 10,
          ),
          _searchInScreenImage(),
          _searchInScreenBottom(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        "탐색 탭",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _searchInpage() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10,),
            CircleAvatar(radius: 18,backgroundImage: AssetImage(searchImgLists[selectedNum].circleImg),),
            SizedBox(width: 10,),
            Text(
              searchImgLists[selectedNum].id,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 4,),
            Icon(Icons.check_circle, color: Colors.blue, size: 12),
            Spacer(),
            Container(
              height: 36,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFefefef),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "팔로우",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_horiz_sharp),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }

  Widget _searchInScreenImage() {
    return Container(
      width: double.infinity,
      height: 400,
      child: Image.asset(searchImgLists[selectedNum].searchImg),
    );
  }

  Widget _searchInScreenBottom() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(
                FontAwesomeIcons.comment,
                size: 20,
              ),
              SizedBox(width: 10),
              Icon(
                FontAwesomeIcons.paperPlane,
                size: 20,
              ),
              Spacer(),
              Icon(FontAwesomeIcons.bookmark, size: 20),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text("좋아요 ${searchImgLists[selectedNum].like}개", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            children: [
              Text("${searchImgLists[selectedNum].id}", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Text("${searchImgLists[selectedNum].text}"),
              SizedBox(width: 10),
              Text("더 보기", style: TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            children: [
              Text("댓글 ${searchImgLists[selectedNum].coment}개 모두 보기"),
            ],
          ),
          Row(
            children: [Text("${searchImgLists[selectedNum].time} · Instagram 추천", style: TextStyle(color: Colors.grey),)],
          ),
        ],
      ),
    );
  }
}
