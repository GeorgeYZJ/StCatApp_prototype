import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _switch1 = false;
  bool _switch2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text('Setting'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(8),
                color: Colors.blue,
                child: ListTile(
                  title: Text(
                    'George Yang',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onTap: () {
                    //turn to other page
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(15, 16, 15, 8),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Change Language'),
                      leading: Icon(
                        Icons.language,
                        color: Color.fromRGBO(0, 114, 206, 1),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        //turn to other page
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                    ListTile(
                      title: Text('Change Theme'),
                      leading: Icon(
                        Icons.language,
                        color: Color.fromRGBO(0, 114, 206, 1),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        //turn to other page
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey.shade500,
                    ),
                    ListTile(
                      title: Text('Coming Soon'),
                      leading: Icon(
                        Icons.language,
                        color: Color.fromRGBO(0, 114, 206, 1),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        //turn to other page
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Notification Settings",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SwitchListTile(
                contentPadding: const EdgeInsets.all(5),
                value: _switch1,
                activeColor: Colors.blue,
                onChanged: (bool val) {
                  setState(() {
                    _switch1 = val;
                  });
                },
                title: Text("Received Notification"),
              ),
              SwitchListTile(
                contentPadding: const EdgeInsets.all(5),
                value: _switch2,
                activeColor: Colors.blue,
                onChanged: (bool val) {
                  setState(() {
                    _switch2 = val;
                  });
                },
                title: Text("Upcoming Event"),
              ),
            ],
          ),
        ));
  }
}
