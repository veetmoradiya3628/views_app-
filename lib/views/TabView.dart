import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab_View extends StatelessWidget {
  const Tab_View({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Programming Languages"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "C++",
              ),
              Tab(
                text: "Java",
              ),
              Tab(
                text: "Python",
              ),
              Tab(
                text: "JS",
              ),
              Tab(
                text: "Flutter",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Container(
                child: Text(
                  'C++ is a general purpose programming language and widely used now a days for competitive programming. '
                      'It has imperative, object-oriented and generic programming features. C++ runs on lots of platform like Windows, '
                      'Linux, Unix, Mac etc.',
                  style: GoogleFonts.lato(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  'Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language.'
                  'Java was developed by Sun Microsystems (which is now the subsidiary of Oracle) in the year 1995. James Gosling is known as the father of Java. Before Java, its name was Oak. Since Oak was already a '
                  'registered company, so James Gosling and his team changed the name from Oak to Java. '
                  'Platform: Any hardware or software environment in which a program runs, is known as a platform. Since Java has a'
                  'runtime environment (JRE) and API, it is called a platform.',
                  style: GoogleFonts.lato(
                      fontSize: 20
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  'Python is a general purpose, dynamic, high-level, and interpreted programming language.'
                  'It supports Object Oriented programming approach to develop applications. '
                  'It is simple and easy to learn and provides lots of high-level data structures.'
                  'Python is easy to learn yet powerful and versatile scripting language, which makes it attractive for Application Development.'
                  'Python has syntax and dynamic typing with its interpreted nature make it an ideal language for scripting and rapid application development.'
                  'Python supports multiple programming pattern, including object-oriented, imperative, and functional or procedural programming styles.',
                  style: GoogleFonts.lato(
                      fontSize: 20
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  'JavaScript (js) is a light-weight object-oriented programming language which is used by several websites for scripting the webpages. '
                      'It is an interpreted, full-fledged programming language that enables dynamic interactivity on websites when applied to an HTML document. '
                      'It was introduced in the year 1995 for'
                      ' adding programs to the webpages in the Netscape Navigator browser. '
                      'Since then, it has been adopted by all other graphical web browsers. With JavaScript, users can build modern web applications to interact directly without reloading the page every time. '
                      'The traditional website uses js to provide several forms of interactivity and simplicity.'
                      'Although, JavaScript has no connectivity with Java programming language. The name was suggested and provided in the times when Java was gaining popularity in the market. '
                      'In addition to web browsers, databases such as CouchDB and MongoDB uses JavaScript as their scripting and query language.',
                  style: GoogleFonts.lato(
                      fontSize: 20
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  'In general, creating a mobile application is a very complex and challenging task. There are many frameworks available, which provide excellent features to develop mobile applications. '
                      'For developing mobile apps, Android provides a native framework based on Java and Kotlin language, while iOS provides a framework based on Objective-C/Swift language. Thus, we need two different languages and frameworks to develop applications for both OS. '
                      'Today, to overcome form this complexity, there are several frameworks have introduced that support both OS along with desktop apps. These types of the framework are known as cross-platform development tools.',
                  style: GoogleFonts.lato(
                      fontSize: 20
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
