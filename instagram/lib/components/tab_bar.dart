import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/model/user.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({Key? key}) : super(key: key);

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
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Image.asset("${tabView[index].backgroundImage}");
            },
          itemCount: 40,
            ),
            Container(
              color: Colors.red,
            )
      ]),
    );
  }
}
