import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_nura/models/popular_data_model.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  List detailCourses = [
    PopularDataModel("images/test.jpg", "Hello World",
        "Itro & Tobu - Cloud 9 [NCS Release]"),
    PopularDataModel("images/test.jpg", "Hello World",
        "Itro & Tobu - Cloud 9 [NCS Release]"),
    PopularDataModel("images/test.jpg", "Hello World",
        "Itro & Tobu - Cloud 9 [NCS Release]"),
    PopularDataModel("images/test.jpg", "Hello World",
        "Itro & Tobu - Cloud 9 [NCS Release]"),
    PopularDataModel("images/test.jpg", "Hello World",
        "Itro & Tobu - Cloud 9 [NCS Release]"),
    PopularDataModel("images/test.jpg", "Hello World",
        "Itro & Tobu - Cloud 9 [NCS Release]"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "Article",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 340,
                child: Stack(
                  // alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            "images/test.jpg",
                            height: 250,
                            width: 400,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,

                      //top: 30,

                      bottom: 20,

                      right: 40,

                      child: Card(
                        elevation: 10,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Colors.white54,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),

                                  child: Text(
                                "JAVA",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                alignment: Alignment.center,
                                child: Text(
                                  "How to install /JAVA 11 on Debian Ubuntu - NURADEV.com",
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Positioned(
                        // bottom: 0,
                        //  top: 330,
                        bottom: 0,
                        left: 30,
                        right: 30,

                        //  margin: EdgeInsets.only(top: 300),

                        child: new RawMaterialButton(

                          focusElevation: 10,
                          splashColor: Colors.white70,
                          child: new Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          shape: new CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.blue,
                          padding: const EdgeInsets.all(15.0),


                          onPressed: () {},
                        ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 190,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListView.builder(
                  itemCount: detailCourses.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, indext) {
                    return Card(
                      elevation: 10,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Colors.white54,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              //padding: EdgeInsets.all(2.0),
                              child: Image.asset(
                                detailCourses[indext].lessonImage,
                                width: 150,
                                height: 200,
                                fit: BoxFit.cover,
                                // height: 245,
                              ),
                            ),
                            Positioned(
                              left: 5,
                              right: 5,
                              bottom: 10,
                              child: Container(
                                color: Colors.black45,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        detailCourses[indext].title,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        detailCourses[indext].description,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
