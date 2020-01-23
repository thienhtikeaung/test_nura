import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BottomNavHomePage extends StatefulWidget {
  @override
  _BottomNavHomePageState createState() => _BottomNavHomePageState();
}

class _BottomNavHomePageState extends State<BottomNavHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(

        leading: Icon(Icons.arrow_back),
        title: Center(child: Text("Android")),
      ),

      body: Stack(
        children: <Widget>[
          Image.asset("images/bg.png",
          width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),

          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      elevation: 10,
                      //Column for Lecturers
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,),
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height/3,
                        child: Column(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Choose Today Lecturer",
                                style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontWeight: FontWeight.w500
                                ),),
                            ),



                            Container(
                              padding: EdgeInsets.all(0),
                              child: Row(
                           // crossAxisAlignment: CrossAxisAlignment.start,

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[



                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                    //  crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[


                                        CircleAvatar(
                                          backgroundImage: AssetImage("images/test.jpg"),
                                        ),
                                        Text("Arjun"),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                     // crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[

                                        CircleAvatar(
                                          backgroundImage: AssetImage("images/test.jpg"),
                                        ),
                                        Text("Aung Thu")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                  //    crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[

                                        CircleAvatar(
                                          backgroundImage: AssetImage("images/test.jpg"),
                                        ),
                                        Text("Aung Thu")
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,

                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[




                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[

                                        CircleAvatar(
                                          backgroundImage: AssetImage("images/test.jpg"),
                                        ),
                                        Text("Aung Thu")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      //    crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[

                                        CircleAvatar(
                                          backgroundImage: AssetImage("images/test.jpg"),
                                        ),
                                        Text("Aung Thu")
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            RaisedButton(
                              child: const Text('UPLOAD',style: TextStyle(color: Colors.white),),
                              color: Theme.of(context).accentColor,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              splashColor: Colors.white54,
                              onPressed: () {
                                // Perform some action
                              },
                            ),

                          ],
                        ),
                      ),

                    ),

                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[

                            ClipOval(
                              child: Container(
                                color: Colors.yellowAccent,
                                width: 20,
                                height: 20,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/tab_collapse.png",),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),

                            Container(
                              width: 170,
                                padding: EdgeInsets.only(left: 20,right: 30),
                                child: Text("Mg Mg",style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontWeight: FontWeight.w500),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,left: 10),
                              child: Icon(Icons.add_circle,color:Colors.red, size: 25,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,),
                              child: Icon(Icons.check_circle_outline,color:Colors.blue, size: 25,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[

                            ClipOval(
                              child: Container(
                                color: Colors.yellowAccent,
                                width: 20,
                                height: 20,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/tab_collapse.png",),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),

                            Container(
                                width: 170,
                                padding: EdgeInsets.only(left: 20,right: 30),
                                child: Text("Mg Arjun",style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontWeight: FontWeight.w500),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,left: 10),
                              child: Icon(Icons.add_circle,color:Colors.red, size: 25,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,),
                              child: Icon(Icons.check_circle_outline,color:Colors.blue, size: 25,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[

                            ClipOval(
                              child: Container(
                                color: Colors.yellowAccent,
                                width: 20,
                                height: 20,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/tab_collapse.png",),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),

                            Container(
                                width: 170,
                                padding: EdgeInsets.only(left: 20,right: 30),
                                child: Text("Mg Mg",style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontWeight: FontWeight.w500),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,left: 10),
                              child: Icon(Icons.add_circle,color:Colors.red, size: 25,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,),
                              child: Icon(Icons.check_circle_outline,color:Colors.blue, size: 25,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[

                            ClipOval(
                              child: Container(
                                color: Colors.yellowAccent,
                                width: 20,
                                height: 20,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/tab_collapse.png",),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),

                            Container(
                                width: 170,
                                padding: EdgeInsets.only(left: 20,right: 30),
                                child: Text("Mg Mg",style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontWeight: FontWeight.w500),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,left: 10),
                              child: Icon(Icons.add_circle,color:Colors.red, size: 25,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,),
                              child: Icon(Icons.check_circle_outline,color:Colors.blue, size: 25,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[

                            ClipOval(
                              child: Container(
                                color: Colors.yellowAccent,
                                width: 20,
                                height: 20,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/tab_collapse.png",),
                                minRadius: 15,
                                maxRadius: 15,
                              ),
                            ),

                            Container(
                                width: 170,
                                padding: EdgeInsets.only(left: 20,right: 30),
                                child: Text("Mg Mg",style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontWeight: FontWeight.w500),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,left: 10),
                              child: Icon(Icons.add_circle,color:Colors.red, size: 25,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10,),
                              child: Icon(Icons.check_circle_outline,color:Colors.blue, size: 25,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],

      )

    );
  }



}
