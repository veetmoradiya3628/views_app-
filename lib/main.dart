import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'views/ListView.dart';
import 'views/TabView.dart';
import 'views/GridView.dart';
import 'views/CardView.dart';
import 'views/PhotoView.dart';
import 'views/StackView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListItem> _items = [
    ListItem(title: 'Grid View', fileName: 'GridView'),
    ListItem(title: 'Card View', fileName: 'CardView'),
    ListItem(title: 'PhotoView', fileName: 'PhotoView'),
    ListItem(title: 'StackView', fileName: 'StackView'),
    ListItem(title: 'TabView', fileName: 'TabView')
  ];

  List m = [Grid_View(), Card_View(), Photo_View(), Stack_View(), Tab_View()];
  List colors = [Colors.lightBlue, Colors.red, Colors.deepPurple, Colors.indigoAccent, Colors.greenAccent];
  List icons = [Icons.anchor, Icons.home, Icons.http, Icons.title, Icons.attach_money];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'List View Layout',
          style: GoogleFonts.lato(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.orange,
      ),
        body: Container(
              child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => m[index]),
                        );
                      },
                      child: Container(
                        child: ListTile(
                          leading: Icon(
                              icons[index],
                              size: 30,
                            color: Colors.white,
                          ),
                          title: Text(
                              _items[index].title,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 22.0,
                              ),
                          ),
                          tileColor: colors[index],
                        ),
                      ),
                    );
                  }),
            ),
    );
  }
}

class ListItem {
  String title;
  String fileName;
  ListItem({
    this.title,
    this.fileName
  });
}