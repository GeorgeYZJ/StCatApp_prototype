import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  GroupPage({Key key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  List<String> myTitles = ['Bayts', 'Banksia', 'Jia', 'Ghar', 'Maya'];
  List<IconData> myicons = [
    Icons.business_center,
    Icons.airline_seat_legroom_normal,
    Icons.accessibility,
    Icons.mood_bad,
    Icons.adb,
  ];

  List<String> myImageUrl = [
    'https://t4.ftcdn.net/jpg/02/61/44/71/240_F_261447178_D27dpLSYGaFANIdsT4xjJwv9NTdevvqz.jpg',
    'https://www.liveabout.com/thmb/-CjRfrCxwtyTZC4bELO3I5aVcPI=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/good-friends-56a331ec5f9b58b7d0d0e8a3.jpg',
    'https://prod-discovery.edx-cdn.org/media/course/image/ed682cf1-7c11-4417-ac78-e940843cfccc-bb93707c5457.small.jpg',
    'https://static.wixstatic.com/media/f1750e_ba908e7c199e429db12682b3304d6daf~mv2.jpg/v1/fill/w_560,h_370,al_c,q_80,usm_0.66_1.00_0.01/carnival%20amusements%201.webp',
    'https://static.wixstatic.com/media/eb1051_d6936036e4bb4bd0a5d33219d82015a2~mv2.jpg/v1/fill/w_560,h_348,al_c,q_80,usm_0.66_1.00_0.01/table%20feast%20ws.webp',
    'https://images.unsplash.com/photo-1532947974358-a218d18d8d14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3750&q=80',
  ];

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Cat\'s Group'),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  _SectionCard(
                    myTitles[0],
                    myicons[0],
                  ),
                  _SectionCard(
                    myTitles[1],
                    myicons[1],
                  ),
                  _SectionCard(
                    myTitles[2],
                    myicons[2],
                  ),
                  _SectionCard(
                    myTitles[3],
                    myicons[3],
                  ),
                  _SectionCard(
                    myTitles[4],
                    myicons[4],
                  ),
                  _SectionCard(
                    myTitles[0],
                    myicons[0],
                  ),
                  _SectionCard(
                    myTitles[2],
                    myicons[2],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey.shade400,
            height: deviceHeight(context) * 0.28,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(top: deviceHeight(context) * 0.14),
            child: ListView(
              children: <Widget>[
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: _ProductCard(myImageUrl[0], "Notification",
                            "Things and Events You Should Know This Week"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _SectionCard(String title, IconData myIcon) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          InkWell(
            splashColor: Colors.lightBlueAccent,
            onTap: () {},
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
    );
  }

  Widget _ProductCard(String imageUrl, String title, String head) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(218, 170, 0, 0.8).withOpacity(0.1),
              Color.fromRGBO(223, 25, 149, 0.8).withOpacity(0.4),
              Color.fromRGBO(0, 114, 206, 0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70.0),
                child: Text(
                  head,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 38, 56, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(237, 237, 239, 1),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
