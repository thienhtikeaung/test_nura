import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_nura/models/popular_data_model.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List photos = [
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
      body: NestedScrollView(


          headerSliverBuilder: (BuildContext context, bool insideScrollView) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                floating: true,
                pinned: false,
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    alignment: Alignment.bottomCenter,
                    child:    Container(
                     // padding: EdgeInsets.only(left: 50,right: 50),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "How to install /JAVA 11 on Debian Ubuntu  NURADEV.com",
                        style: TextStyle(fontSize: 12),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  background: Image.asset(
                    "images/test.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: Container(
            height: double.infinity,

              padding: EdgeInsets.only(left: 0,right: 0),

              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  elevation: 20,

                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: Colors.white54,
                      child: SingleChildScrollView(


                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                    ExactAssetImage("images/test.jpg"),
                                    maxRadius: 25,
                                    minRadius: 25,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: <Widget>[
                                    Text("Nure Group", style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,),),
                                    Text("19 Dec 2019", style: TextStyle(
                                      fontSize: 15, color: Colors.black45,),)
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10,),
                              child: Text(
                                  "In the previous article of thursday flutter series,"
                                      " we made a mobile app dashboard. This will focus on making "
                                      "a list of items and a detail page for each item. As before,"
                                      " I got this design from Pinterest. This will be in two parts."
                                      " NOTE: as at the time of writing this, I could not get most of the icons"),
                            ),

                          Container(
                            alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 10),
                              child: Text("PHOTOS",style: TextStyle(color: Colors.black45,fontSize: 18)
                               ,)),
                           Container(
                             height: 100,
                             child: ListView.builder(
                                 shrinkWrap: true,
                               // physics: NeverScrollableScrollPhysics(),
                               scrollDirection: Axis.horizontal,
                                 itemCount: photos.length,
                                 itemBuilder: (BuildContext context, int indext)
                             {
                               return Container(
                                 padding: EdgeInsets.only(top: 5,left: 3),
                                   child: Image.asset(photos[indext].lessonImage,width: 130,height: 130,));
                             }),
                           ),
                 Container(
                     padding: EdgeInsets.only(top:7),
                     child: Text("The shrinkwrap thing makes the listview expanded at once,"
                           " and NeverScrollable thing makes the scrolling in it disabled"
                           " making the whole page scroll. "),
                 ),

                          ],
                        ),


                      ),
                        onTap: (){

                        },
                    ),

                  )
              ))


      ),
    );
  }
}
