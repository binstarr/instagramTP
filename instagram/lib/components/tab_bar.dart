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
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Image.network("${widget.user.imgs[index].image}");
                },
                itemCount: 4,
              ),
            ),
            Container(
              color: Colors.red,
            )
          ]),
    );
  }
}
