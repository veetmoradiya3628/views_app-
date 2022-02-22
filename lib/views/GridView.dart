import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Grid_View extends StatefulWidget {
  const Grid_View({Key key}) : super(key: key);

  @override
  _Grid_ViewState createState() => _Grid_ViewState();
}

class _Grid_ViewState extends State<Grid_View> {
  List<int> _list = [];

  Random random = Random();
  int cnt = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(milliseconds: 1000), (timer) {
      if(cnt < 12){
        _list.add(random.nextInt(100));
      }
      setState(() {
        cnt++;
      });
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View - Flutter'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: _list.map((value) {
          return Container(
            decoration:
            BoxDecoration(
              border: Border.all(
                  color: Colors.black
              ),
              color: Colors.black
            ),
            child: Text(
                "Item $value",
                style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  color: Colors.white
                ),
            ),
          );
        }).toList(),
      ),
    );
  }

}


