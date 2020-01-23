
import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final List<String> _listViewData = [
    "lecture 1",
    "lecture 2",
    "lecture 3",
    "lecture 4",
    "lecture 5",
    "lecture 6",
    "lecture 7",
    "lecture 8",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
              alignment: Alignment.center,
              child: Text(
                "Introduction to Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black45),
              )),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/test.jpg",
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        left: 15,
                        right: 15,
                        bottom: 20,
                        child: Container(
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(splashColor: Colors.black),
                            child: TextField(
                              autofocus: false,
                              style: TextStyle(

                                  fontSize: 15.0, color: Colors.white),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black54,
                                hintText: "Search",

                                hintStyle: TextStyle(color: Colors.white12,fontSize: 12,),
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54,width: 0.0),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54,width: 0.0,),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
              //  height:MediaQuery.of(context).size.height,
                height: 400,

                padding: EdgeInsets.only(bottom: 20),
                //margin: EdgeInsets.all(20),
                child: GridView.count(
                  shrinkWrap: true,

                  physics: ScrollPhysics(),
                  childAspectRatio: MediaQuery.of(context).size.height / 200,
                  mainAxisSpacing: 20,
                  //childAspectRatio: (itemWidth / itemHeight),
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(8.0),
                  children: _listViewData
                      .map((data) => Container(
                            height: 50,
                            width: 50,
                              child: Card(
                                elevation: 6,
                                child: InkWell(
                                  splashColor: Colors.white54,
                                  borderRadius: BorderRadius.circular(10),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.play_circle_filled,color: Colors.black54,),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        data,
                                        style: TextStyle(color: Colors.black54),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                  onTap: () {},
                              ),

                            ),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ));
  }
}
