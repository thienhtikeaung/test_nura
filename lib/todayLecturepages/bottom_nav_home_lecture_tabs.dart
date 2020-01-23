import 'package:flutter/material.dart';
import 'package:test_nura/models/tab_lesson_model.dart';

class BottomNavHomeTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  title: Text(
                    "Hello world",
                    style: TextStyle(color: Colors.black54),
                  ),
                  // bottom:
                ),
                body: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: <Widget>[
                      Container(
                        //  constraints: BoxConstraints.expand(height: 50),
                        child: TabBar(
                            indicatorColor: Colors.blue,
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.black54,
                            // unselectedLabelStyle: TextStyle(color: Colors.blue),
                            //unselectedLabelColor: TextStyle(color: Colors.blue),
                            tabs: [
                              Tab(
                                text: "Sharing",
                              ),
                              Tab(text: "Classes"),
                              Tab(text: "Social"),
                            ]),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                          child: TabBarView(children: [
                            Container(
                              child: Text("Hello World"),
                            ),
                            Container(child: _classTabs()),
                            Container(
                              child: Text("User Body"),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ))));
  }
}

Widget _classTabs() {
  return Container(
    // width: double.infinity,
    // alignment: Alignment.center,
    padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
    child: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Helllo World",style: TextStyle(color: Colors.black,
                          fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                      child: Text(
                        "In flutter, Scaffold implements the basic material design visual layout structure. "
                        "The Scaffold is good enough to create a general purpose mobile application and",
                        style: TextStyle(color: Colors.black26,),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 150,
                  child: Card(
                    elevation: 10,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 20,
                          right: 20,
                          bottom: 150,
                          child: ClipOval(
                            child: Container(
                              height: 100,
                              width: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        //title of card's half circle
                        Positioned(
                            top: 10,
                            left: 50,
                            right: 50,
                            child: Center(
                                child: Text(
                              "Web",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ))),
                        Positioned(
                          top: 50,
                          left: 5,
                          child: Column(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Web",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                              Row(children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2 Lecture",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                              Row(children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "4 Student",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 60,
                            right: 60,
                            bottom: 10,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              // color: Colors.blue,
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Stack(children: <Widget>[
                  Container(
                    height: 200,
                    width: 150,
                    child: Card(
                      elevation: 10,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 20,
                            right: 20,
                            bottom: 150,
                            child: ClipOval(
                              child: Container(
                                height: 100,
                                width: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          //card's half title
                          Positioned(
                              top: 10,
                              left: 50,
                              right: 50,
                              child: Container(
                                  child: Text(
                                "Flutter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ))),
                          Positioned(
                            top: 50,
                            left: 5,
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 25,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Web",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                                Row(children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 25,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "2 Lecture",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                                Row(children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 25,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "4 Student",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                          Positioned(
                              left: 60,
                              right: 60,
                              bottom: 10,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                // color: Colors.blue,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 150,
                  child: Card(
                    elevation: 10,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 20,
                          right: 20,
                          bottom: 150,
                          child: ClipOval(
                            child: Container(
                              height: 100,
                              width: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 45,
                          right: 45,
                          child: Center(
                            child: Text(
                              "Android",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 5,
                          child: Column(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Web",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                              Row(children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "2 Lecture",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                              Row(children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "4 Student",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ]),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 60,
                            right: 60,
                            bottom: 10,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              // color: Colors.blue,
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Stack(children: <Widget>[
                  Container(
                    height: 200,
                    width: 150,
                    child: Card(
                      elevation: 10,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 20,
                            right: 20,
                            bottom: 150,
                            child: ClipOval(
                              child: Container(
                                height: 100,
                                width: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 45,
                              right: 45,
                              child: Center(
                                  child: Text(
                                "Python",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ))),
                          Positioned(
                            top: 50,
                            left: 5,
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Web",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                                Row(children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "2 Lecture",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                                Row(children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "4 Student",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                          Positioned(
                              left: 60,
                              right: 60,
                              bottom: 10,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                // color: Colors.blue,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}


