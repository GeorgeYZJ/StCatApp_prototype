import 'package:flutter/material.dart';

import '../service/Service.dart';
import './loadingcontent.dart';

Color _MainColor = Color(0xff002638);

Color _ViolaColor = Color(0xff5B4DD2);
Color _DarkWhiteColor = Color(0xffEDEDEF);

List<String> myTitles = ['Bayts', 'Banksia', 'Jia', 'Ghar', 'Maya'];
List<IconData> myicons = [
  Icons.business_center,
  Icons.airline_seat_legroom_normal,
  Icons.accessibility,
  Icons.mood_bad,
  Icons.adb,
];

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;
  PageController _pageController1 = PageController(initialPage: 0);

  void _onPageChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController1.jumpToPage(selectedIndex);
  }

  List<Widget> _pages = [
    loadcontent(),
    Container(
      color: Colors.amber,
    ),
    foldCell(),
    Container(
      color: Colors.limeAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.limeAccent,
    ),
    Container(
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/logo2.png',
                  fit: BoxFit.cover,
                  height: 170.0,
                  width: 210,
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                padding: EdgeInsets.all(5.0),
                icon: Icon(Icons.search),
                onPressed: () {
                  // Implement navigation to shopping cart page here...
                },
              ),
            ]),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/catpawBackground.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 15,
              child: Container(
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    _SectionCard(
                      myTitles[0],
                      myicons[0],
                      0,
                    ),
                    _SectionCard(
                      myTitles[1],
                      myicons[1],
                      1,
                    ),
                    _SectionCard(
                      myTitles[2],
                      myicons[2],
                      2,
                    ),
                    _SectionCard(
                      myTitles[3],
                      myicons[3],
                      3,
                    ),
                    _SectionCard(
                      myTitles[4],
                      myicons[4],
                      4,
                    ),
                    _SectionCard(
                      myTitles[0],
                      myicons[0],
                      5,
                    ),
                    _SectionCard(
                      myTitles[2],
                      myicons[2],
                      6,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade600,
            ),
            //loadcontent(),
            Expanded(
              flex: 77,
              child: PageView(
                controller:
                    _pageController1, // It is used to control the pages.
                children: _pages,
                onPageChanged:
                    _onPageChange, // This is called when page change occurs.
                physics: BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget customTextField(String hint, Icon iconName) {
  //   return Column(
  //     children: <Widget>[
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Container(
  //         decoration: BoxDecoration(
  //           color: Color(0xffEDEDEF).withOpacity(0.5),
  //           borderRadius: BorderRadius.circular(25),
  //         ),
  //         child: TextField(
  //           style: TextStyle(color: Colors.white),
  //           cursorColor: Colors.white,
  //           decoration: InputDecoration(
  //               border: InputBorder.none,
  //               focusedBorder: InputBorder.none,
  //               enabledBorder: InputBorder.none,
  //               errorBorder: InputBorder.none,
  //               disabledBorder: InputBorder.none,
  //               fillColor: Color(0xffEDEDEF).withOpacity(0),
  //               filled: true,
  //               hintText: hint,
  //               labelStyle: TextStyle(color: Colors.white),
  //               suffixIcon: iconName),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _SectionCard(String title, IconData myIcon, int index) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              InkWell(
                splashColor: Colors.lightBlueAccent,
                onTap: () {
                  setState(() {
                    _pageController1.jumpToPage(index);
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(223, 25, 149, 0.8),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        myIcon,
                        color: Color.fromRGBO(0, 38, 56, 1),
                        size: 30,
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 38, 56, 1),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
