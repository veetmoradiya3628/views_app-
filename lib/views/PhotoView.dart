import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Photo_View extends StatefulWidget {
  const Photo_View({Key key}) : super(key: key);

  @override
  _Photo_ViewState createState() => _Photo_ViewState();
}

class _Photo_ViewState extends State<Photo_View> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Photo View Example')),
        backgroundColor: Colors.black,
        body: MyPhoto(),
      ),
    );
  }
}


class MyPhoto extends StatelessWidget {
  const MyPhoto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
          imageProvider: AssetImage("assets/images/java.jpeg"),
        )
    );
  }
}
