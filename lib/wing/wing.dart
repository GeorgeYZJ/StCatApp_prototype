import 'package:flutter/material.dart';
import './foldcell.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Container(
        color: Colors.grey.shade200,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return SimpleFoldingCell.create(
              frontWidget: _buildFrontWidget(index),
              innerWidget: _buildInnerWidget(index),
              cellSize: Size(MediaQuery.of(context).size.width, 125),
              padding: EdgeInsets.all(15),
              animationDuration: Duration(milliseconds: 300),
              borderRadius: 10,
              onOpen: () {},
              onClose: () {},
            );
          },
        ),
      ),
    );
  }

  Widget _buildFrontWidget(int index) {
    return Builder(
      builder: (BuildContext context) {
        return InkWell(
          onTap: () {
            final foldingCellState =
                context.findAncestorStateOfType<SimpleFoldingCellState>();
            foldingCellState?.toggleFold();
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(218, 170, 0, 1),
                  Color.fromRGBO(223, 25, 149, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Message\'s Topic - $index",
                    style: GoogleFonts.lato(
                      color: Color(0xFF2e282a),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildInnerWidget(int index) {
    return Builder(
      builder: (context) {
        return InkWell(
          onTap: () {
            final foldingCellState =
                context.findAncestorStateOfType<SimpleFoldingCellState>();
            foldingCellState?.toggleFold();
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(218, 170, 0, 0.8).withOpacity(0.1),
                  Color.fromRGBO(223, 25, 149, 0.8).withOpacity(0.4),
                  Color.fromRGBO(0, 114, 206, 0.6),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Message\'s Topic - $index",
                      style: GoogleFonts.aldrich(
                        color: Color(0xFF2e282a),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 8, top: 40, right: 8, bottom: 8),
                  child: Text(
                    "      Message\'s DETAIL - $index This is a long sentences  This is a long sentences, This is a long sentences This is a long sentences This is a long sentences This is a long sentences",
                    style: GoogleFonts.lato(
                      color: Color(0xFF2e282a),
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
