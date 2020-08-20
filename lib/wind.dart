import 'package:flutter/material.dart';

class WindPage extends StatefulWidget {
  WindPage({Key key}) : super(key: key);

  @override
  _WindPageState createState() => _WindPageState();
}

class _WindPageState extends State<WindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wing\'s Discussion'),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Card(
              color: index % 2 == 0 ? Color.fromRGBO(0, 114, 206, 0.5) : null,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Wing Chat Post ${index + 1}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('哈哈哈哈哈哈哈哈哈'),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
