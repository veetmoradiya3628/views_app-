import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card_View extends StatelessWidget {
  const Card_View({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Card Example')),
        backgroundColor: Colors.black,
        body: MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  MyCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album, color: Colors.black, size: 60),
                  title: Text(
                      'Arijit Singh',
                      style: GoogleFonts.lato(fontSize: 30.0)
                  ),
                  subtitle: Text(
                      'Best of Arijit Singh Music.',
                    style: GoogleFonts.lato(
                      color: Colors.lightBlue,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      child: Text(
                          'Play',
                        style: GoogleFonts.lato(),
                      ),
                      onPressed: () {/* ... */},
                    ),
                    ElevatedButton(
                      child: Text(
                          'Pause',
                          style: GoogleFonts.lato(),
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}