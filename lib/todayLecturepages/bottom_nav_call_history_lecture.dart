import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class BottomNavCallHistory extends StatefulWidget {
  @override
  _BottomNavCallHistoryState createState() => _BottomNavCallHistoryState();
}

class _BottomNavCallHistoryState extends State<BottomNavCallHistory> {

  @override
  Widget build(BuildContext context) {

    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Attdence", () => 5);
    /*dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);*/
    dataMap.putIfAbsent("Absense", () => 2);
    return Scaffold(
      /*appBar: AppBar(

            leading: Icon(Icons.arrow_back,color: Colors.white,),
            title: Center(child:Text("Hell- World")),
          ),*/
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/bg.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 30),
                      height: 75,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 30, right: 40),
                                child: Icon(
                                  Icons.date_range,
                                  color: Colors.black26,
                                )),
                            Container(
                              child: Text(
                                "20-01-2020",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        elevation: 10,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.library_books,
                                  size: 25,
                                  color: Colors.black54,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Lecture",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 5,
                                  width: 20,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, right: 2),
                                  child: Text(
                                    "Arjun Dhakal",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.description,
                                  size: 25,
                                  color: Colors.black54,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Attedence",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 5,
                                  width: 20,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, right: 2),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ]),
                            Row(children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.assignment,
                                  size: 25,
                                  color: Colors.black54,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Absense",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 5,
                                  width: 20,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20, right: 2),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.only(bottom: 10, top: 10),
                                color: Colors.cyan,
                                child: Text(
                                  "Hello world",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 5, bottom: 10),
                                    child: ClipOval(
                                      child: Container(
                                          color: Colors.cyan,
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 25, top: 5, bottom: 10),
                                    child: Text(
                                      "Hell World",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 5, bottom: 10),
                                    child: ClipOval(
                                      child: Container(
                                          color: Colors.cyan,
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Text(
                                              "2",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 25, top: 5, bottom: 10),
                                    child: Text(
                                      "Arjun Dhakal",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 5, bottom: 10),
                                    child: ClipOval(
                                      child: Container(
                                          color: Colors.cyan,
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 25, top: 5, bottom: 10),
                                    child: Text(
                                      "Pyae Sone",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    PieChart(
                      dataMap: dataMap,
                      animationDuration: Duration(milliseconds: 5000),
                      chartLegendSpacing: 32.0,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      showChartValuesInPercentage: true,
                      showChartValues: true,
                      showChartValuesOutside: false,
                      chartValueBackgroundColor: Colors.grey[200],
                     // colorList: colorList,
                      showLegends: true,
                      legendPosition: LegendPosition.left,
                      decimalPlaces: 1,
                      showChartValueLabel: true,
                      initialAngle: 0,
                      chartValueStyle: defaultChartValueStyle.copyWith(
                        color: Colors.blueGrey[900].withOpacity(0.9),
                      ),
                     // colorList: List<Colors.black>,
                      chartType: ChartType.disc,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


