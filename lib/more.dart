import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MorePage extends StatefulWidget {
  MorePage({Key key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  Items item1 = new Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/calendar.png");

  Items item2 = new Items(
    title: "Menu",
    subtitle: "Bocali, Apple",
    event: "",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "Locations",
    subtitle: "St Cat\'s Map",
    event: "",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Activity",
    subtitle: "Rose favirited your Post",
    event: "4 messages",
    img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "To do",
    subtitle: "Homework, Project",
    event: "4 Items",
    img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "Wing",
    subtitle: "Wings\'s Notification",
    event: "2 Items",
    img: "assets/wing.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];

    return Scaffold(
      appBar: AppBar(
        title: Text('More Information'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "St Cat\'s College",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                      IconButton(
                        alignment: Alignment.topCenter,
                        icon: Image.asset(
                          "assets/notification.png",
                          width: 80,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
              ],
            ),
          ),
          Flexible(
            child: GridView.count(
                childAspectRatio: 1.0,
                padding: EdgeInsets.only(left: 16, right: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                children: myList.map((data) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 114, 206, 0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            data.img,
                            width: 42,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.title,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            data.subtitle,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.event,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
