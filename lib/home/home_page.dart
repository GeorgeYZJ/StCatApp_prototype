import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../group/group.dart';
import '../more/more.dart';
import '../service/Service.dart';
import '../setting/setting.dart';
import './index.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);
  List<Widget> _screens = [
    GroupPage(),
    ServicePage(),
    IndexPage(),
    SettingPage(),
    MorePage(),
  ];

  void _onPageChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChange,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: 2,
        backgroundColor: Color.fromRGBO(0, 114, 206, 1),
        // type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          TabItem(
            icon: Icons.group,
            title: 'Group',
          ),
          TabItem(
            icon: Icons.wb_incandescent,
            title: 'Portal',
          ),
          TabItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TabItem(
            icon: Icons.settings,
            title: 'Setting',
          ),
          TabItem(
            icon: Icons.view_comfy,
            title: 'More',
          ),
        ],
      ),
    );
  }
}
