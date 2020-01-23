import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_nura/models/tab_lesson_model.dart';

class HomeTabs extends StatefulWidget {
  @override
  _HomeTabsState createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(

          headerSliverBuilder: (BuildContext context, bool insideScrollView) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 170,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                  "images/tab_collapse.png",width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                )),

                bottom: TabBar(

                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.blue,
                  tabs: <Widget>[
                    Container(

                        padding: EdgeInsets.all(10),
                        child: Text(
                          "OverView",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Lessons",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Discussion",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),

            ];
          },

            body: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 10),
              child: TabBarView(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Container(child: _OverViewTab()),
                  ),
                  _LessonsTabs(),
                  _DiscussionTab(),
                  // _list()
                ],
              ),
            ),
          ),
    );
  }
}

//For OverViewTab(Tab One)
Widget _OverViewTab() {
  return Container(
    //margin: EdgeInsets.only(top: 10),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          child: Card(
            elevation: 10,
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "What you Will Learn",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    )),
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "When I scroll on one page, the second page scrolls too. "
                      "Not as much but enough to obscure the first item."),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text("Make me move"),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text("Make me move"),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          child: Card(
            elevation: 10,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Container(
                    padding:
                        EdgeInsets.only(top: 10, bottom: 10, left: 2, right: 2),
                    child: Text(
                      "What you Will Learn",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    )),
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  ),
                  title: Text(
                      "When I scroll on one page, the second page scrolls too. "
                      "Not as much but enough to obscure the first item."),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  ),
                  title: Text("Make me move"),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  ),
                  title: Text("Make me move"),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

//For Lessons Tab(Tab 2)

Widget _LessonsTabs() {
  List<TabLessonModel> tabLessonModel = [
    TabLessonModel(
        "images/flutter_intro.png", "Introduction to Flutter", "10 Lectures"),
    TabLessonModel(
        "images/flutter_basic.png", "Introduction to Flutter", "10 Lectures"),
    TabLessonModel("images/flutter_basic.png",
        "Introduction to Testing Flutter", "10 Lectures"),
    TabLessonModel("images/flutter_state_management.png",
        "Introduction to Flutter", "10 Lectures"),
  ];
  return Container(


      //height: 300,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          itemCount: tabLessonModel.length,
          itemBuilder: (context, int indext) {
            return Container(
              padding: EdgeInsets.all(10),
              child: Card(
                elevation: 5,
                child: InkWell(
                  splashColor: Colors.white54,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            tabLessonModel[indext].lessonImage,
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            tabLessonModel[indext].lessonTitle,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(5),
                            child: Text(tabLessonModel[indext].totalLetures))
                      ],
                    ),
                  ),
                  onTap: (){

                  },
                ),
              ),
            );
          }));
}
//For DiscussionTab(Tab 3)
Widget _DiscussionTab() {
  return Center(


    child: Text("Hello World",style: TextStyle(color: Colors.black,fontSize: 20),),

  );

}
