import 'package:flutter/material.dart';

import '../model/search_img_list.dart';
import '../screens/search_in_screen.dart';
import '../screens/shop_item_screen.dart';

class SearchList extends StatelessWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int seletedimgNum = 0;
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        searchImgLists.length,
        (index) => Column(
          children: [
              InkWell(
                onTap: () {
                  print("$seletedimgNum 눌러짐");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchInScreen(
                        selectedNum: seletedimgNum,
                      ),
                    ),
                  );
                  seletedimgNum = index;
                  print(seletedimgNum);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Image.asset(
                    searchImgLists[index].searchImg,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
