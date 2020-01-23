import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Course",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
                  height: 370,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 320,
                        padding: EdgeInsets.all(5),
                        child: Card(
                          elevation: 5,
                          child: InkWell(
                            splashColor: Colors.white54,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              //  padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    "images/test.jpg",
                                    width: double.infinity,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(
                                        left: 5, top: 10, bottom: 5, right: 0),
                                    child: Text(
                                      "Learn Flutter & Dart to Build IOS &"
                                      "Andorid App",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                      textAlign: TextAlign.justify,

                                      //textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 5, bottom: 5, right: 0),
                                    child: Text(
                                      "A Comple Guide to the Flutter SDK & Build IOS & "
                                      "Android Apps",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    //alignment: Alignment.topLeft,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 25,
                                          color: Colors.yellowAccent,
                                        ),
                                        Container(
                                            //padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Text(
                                          "4.5 Rating",
                                          style: TextStyle(fontSize: 10),
                                        )),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Icon(
                                          Icons.play_circle_filled,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                            //   padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Text(
                                          "4.5 Rating",
                                          style: TextStyle(fontSize: 10),
                                        )),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Icon(Icons.access_time,
                                            size: 20, color: Colors.grey),
                                        Container(
                                            //    padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Text(
                                          "4.5 Rating",
                                          style: TextStyle(fontSize: 10),
                                        ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Created By:",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "CU Pirate Group",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){

                            },
                          ),
                        ),
                      ),
                      Positioned(
                        // bottom: 0,
                        bottom: 2,
                        left: 100,
                        right: 100,

                        // padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 50,
                          child: RaisedButton(
                            splashColor: Colors.blue,
                            color: Colors.white,
                            textColor: Colors.blue,
                            elevation: 10,
                            child: Container(
                                // padding:EdgeInsets.all(10),
                                child: Text(
                              "Check",
                              style: TextStyle(fontSize: 15),
                            )),
                            shape: StadiumBorder(),
                            /* shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),*/
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5,right: 5,bottom: 10,top: 0),
                  child: Card(
                    elevation: 5,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      splashColor: Colors.black54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            "images/test.jpg",
                            height: 150,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(
                                left: 5, top: 10, bottom: 10, right: 0),
                            child: Text(
                              "Learn Flutter & Dart to Build IOS &"
                                  "Andorid App",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,),
                              textAlign: TextAlign.justify,


                              //textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      onTap: (){},
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
