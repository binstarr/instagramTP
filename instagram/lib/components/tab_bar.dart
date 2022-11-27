import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/profile_into_screen.dart';

import '../model/user_info.dart';

class ProfileTabBar extends StatefulWidget {
  ProfileTabBar({Key? key, required this.user}) : super(key: key);
  User user;
  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tabBar(),
        tabBarView()
      ],
    );
  }

  Widget tabBar() {
    return TabBar(
        controller: _tabController,
        labelColor: Colors.black87,
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
            icon: Icon(FontAwesomeIcons.tableCells),
          ),
          Tab(
            icon: Icon(FontAwesomeIcons.idCardClip),
          ),
        ]);
  }

  Widget tabBarView() {
    return Expanded(
      child: TabBarView(
          controller: _tabController,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>ProfileIntoScreen(
                  name: widget.user.name, profileimg: widget.user.profileimgs, imgs: widget.user.imgs,
                ),));
              },
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return Image.network("${widget.user.imgs[index].image}", fit: BoxFit.cover);
                },
                itemCount: 4,
              ),
            ),
            Container(
                child: _buildBody(),
            )
          ]),
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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(FontAwesomeIcons.userTag, size: 45)),
            SizedBox(height: 30),
            Text(
              "내가 태그된 사진과 동영상",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "사람들이 회원님을 사진 및 동영상에 태그하면 \n 태그된 사진 및 동영상이 여기에 표시됩니다.",
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
