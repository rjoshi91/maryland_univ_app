import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maryland_univ_app/screens/control_panel_screen.dart';


class RoomFunctioningScreen extends StatefulWidget {
  final String usernameController; //if you have multiple values add here
  RoomFunctioningScreen(this.usernameController, {Key key}): super(key: key);//add also..example this.abc,this...

  @override
  _RoomFunctioningScreenState createState() => new _RoomFunctioningScreenState();
}

class _RoomFunctioningScreenState extends State<RoomFunctioningScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    ControlPanelScreen(),
    ControlPanelScreen(),
    ControlPanelScreen()
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xf004262F),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(top: 50.0, left: 5.0, bottom: 0.0),
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => ControlPanelScreen()
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Image.asset('images/icon_ionic_md_arrow_round_back.png', height: 20, width: 40,)
                                      ),
                                    ),
                                  ),

                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 0.0, left: 5.0, bottom: 0.0),
                                        child: Text(
                                          "Bed",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),

                                ],
                              ),
                            ),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0.0, left: 5.0, bottom: 10.0),
                                  child: Text(
                                    "Room",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0, left: 0.0, bottom: 10.0),
                                  child: Text(
                                    "4 Lights",
                                    style: TextStyle(
                                      color: Colors.amber[600],
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 160.0, bottom: 10.0),
                          child: Icon(
                            Icons.wb_incandescent,
                            color: Colors.green,
                            size: 60.0,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: new ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 10,
                              reverse: true, //makes the list appear in descending order
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: _buildItems(index),
                                );
                              }),
                        ),


                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 800,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                  color:Color(0x0f0F7F8FC)),

              child: Column(
                children: <Widget>[

                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 30.0, bottom: 10.0),
                        child: Text(
                          "Intensity",
                          style: TextStyle(
                            color: Color(0xf004262F),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                  Row(
                    children: <Widget>[

                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 10.0, left: 30.0, bottom: 0.0),
                          child: Image.asset('images/solution.png',),
                        ),
                      ),

                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 10.0, left:20.0, bottom: 0.0),
                          child: Image.asset('images/solution_1.png',),
                        ),
                      ),

                    ],
                  ),

                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 30.0, bottom: 10.0),
                        child: Text(
                          "Colors",
                          style: TextStyle(
                            color: Color(0xf004262F),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 30.0, bottom: 10.0),
                        child: Text(
                          "Scenes",
                          style: TextStyle(
                            color: Color(0xf004262F),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
                    child: Row(

                      children: <Widget>[

                        Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Colors.orange[200]),

                          child: Row(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0, right: 10.0, left:20.0, bottom: 0.0),
                                  child: Image.asset('images/surface2.png',color: Colors.white, ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 15.0, bottom: 0.0),
                                child: Text(
                                  "Birthday",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                                color: Colors.purple[200]),

                            child: Row(
                              children: <Widget>[

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0, right: 10.0, left:20.0, bottom: 0.0),
                                    child: Image.asset('images/surface2.png',color: Colors.white, ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 15.0, bottom: 0.0),
                                  child: Text(
                                    "Party",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 10.0, bottom: 10.0),
                    child: Row(

                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                                color: Colors.blue[200]),

                            child: Row(
                              children: <Widget>[

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0, right: 10.0, left:20.0, bottom: 0.0),
                                    child: Image.asset('images/surface2.png',color: Colors.white, ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 15.0, bottom: 0.0),
                                  child: Text(
                                    "Relax",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Colors.green[200]),

                          child: Row(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0, right: 10.0, left:20.0, bottom: 0.0),
                                  child: Image.asset('images/surface2.png',color: Colors.white, ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 0.0, right: 0.0, left: 15.0, bottom: 0.0),
                                child: Text(
                                  "Fun",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/bulb.png'),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_feather_home.png'),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_feather_settings.png'),
            title: Text(""),
          )
        ],
      ),
    );
  }

  Widget _buildItems(int index) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          color: Colors.white),
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: [
          new Row(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 10.0, left:10.0, bottom: 0.0),
                child: Image.asset('images/surface2.png',),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5.0, right: 10.0, left: 0.0, bottom: 0.0),
              child: Text(
                "Main Light",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }


}
