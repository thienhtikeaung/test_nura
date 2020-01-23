import 'package:flutter/material.dart';
import 'package:test_nura/pages/article_page.dart';
import 'package:test_nura/pages/course_page.dart';
import 'package:test_nura/pages/detail_page.dart';
import 'package:test_nura/pages/introduction_page.dart';
import 'package:test_nura/tab_pages/tabs_page.dart';
import 'package:test_nura/todayLecturepages/bottom_nav_call_history_lecture.dart';
import 'package:test_nura/todayLecturepages/bottom_nav_home_lecture_tabs.dart';
import 'package:test_nura/todayLecturepages/bottom_navigation_page.dart';
import 'package:test_nura/todayLecturepages/bottom_nav_home_page.dart';

void main(){

  runApp(MaterialApp(

    home: RoutingPage())
  );
}

class RoutingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.white,

      child: Center(

        child:Column(
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              child: Text("Intro Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) => IntroductionPage(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("Article Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) => ArticlePage(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("Detail Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) => DetailPage(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("Course Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) =>CoursePage(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("Tab Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) => HomeTabs(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("btmnav callHistory"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) =>BottomNavCallHistory(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("btnnav home Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) =>BottomNavHomePage(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("btnnav home tabsPage"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) =>BottomNavHomeTabs(),
                    )
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("btnnav main Page"),
              onPressed: (){
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 600),
                      pageBuilder: (_, __, ___) =>BottomNavigationPage(),
                    )
                );
              },
            ),

          ],
        ) ,
      ),
    );
  }
}

/*
BottomNavHomeTabs
class RoutingPage extends StatefulWidget {
  @override
  _RoutingPageState createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Center(
            child: FlatButton(
              color: Colors.white,
              child: Text("Intro Page"),
              onPressed: (){
                IntroductionPage();
              },
            ),
          )
        ],
      ),
    );
  }
}
*/
