import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(0, 114, 206, 1),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: _selectedIndex == 0 ? Colors.white : Colors.black38,
            ),
            title: Text(
              'Group',
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.white : Colors.black38,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wb_incandescent,
              color: _selectedIndex == 1 ? Colors.white : Colors.black38,
            ),
            title: Text(
              'Wing',
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.white : Colors.black38,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 2 ? Colors.white : Colors.black38,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: _selectedIndex == 2 ? Colors.white : Colors.black38,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _selectedIndex == 3 ? Colors.white : Colors.black38,
            ),
            title: Text(
              'Setting',
              style: TextStyle(
                color: _selectedIndex == 3 ? Colors.white : Colors.black38,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_comfy,
              color: _selectedIndex == 4 ? Colors.white : Colors.black38,
            ),
            title: Text(
              'More',
              style: TextStyle(
                color: _selectedIndex == 4 ? Colors.white : Colors.black38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
