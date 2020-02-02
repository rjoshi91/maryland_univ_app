import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maryland_univ_app/screens/room_functioning_screen.dart';

class ControlPanelScreen extends StatefulWidget {

  const ControlPanelScreen({Key key,}) : super(key: key);

  @override
  _ControlPanelScreenState createState() => new _ControlPanelScreenState();
}

class _ControlPanelScreenState extends State<ControlPanelScreen> {
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
  String usernameController = 'Bed Room';
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
                Row(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 30.0, bottom: 10.0),
                          child: Text(
                            "Control \nPanel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),

                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 70.0, bottom: 10.0),
                      child: Image.asset('images/user.png', width: 130, height: 130,),
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
                          "All Rooms",
                          style: TextStyle(
                            color: Color(0xf004262F),
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                  Row(
                    children: <Widget>[

                      //Bed Room Card

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0,left: 15.0, bottom: 10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RoomFunctioningScreen(usernameController)));
                          },
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.0),
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                                color: Colors.white),

                            child: Column(
                              children: <Widget>[

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30.0, right: 10.0, left:20.0, bottom: 0.0),
                                    child: Image.asset('images/bed.png',),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 0.0, bottom: 0.0),
                                  child: Text(
                                    "Bed Room",
                                    style: TextStyle(
                                      color: Color(0xf004262F),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 10.0,  bottom: 10.0),
                                      child: Text(
                                        "4 Lights",
                                        style: TextStyle(
                                          color: Colors.amber[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),

                      //Living Room Card

                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                            color: Colors.white),

                        child: Column(
                          children: <Widget>[

                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30.0, right: 10.0, left:20.0, bottom: 0.0),
                                child: Image.asset('images/room.png',),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20.0, right: 10.0, left: 0.0, bottom: 0.0),
                              child: Text(
                                "Living room",
                                style: TextStyle(
                                  color: Color(0xf004262F),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 10.0,  bottom: 10.0),
                                  child: Text(
                                    "2 Lights",
                                    style: TextStyle(
                                      color: Colors.amber[700],
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                            ),


                          ],
                        ),
                      ),

                    ],
                  ),

                  Row(
                    children: <Widget>[

                      //Kitchen Card

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 15.0, bottom: 10),
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              color: Colors.white),

                          child: Column(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0, right: 10.0, left:20.0, bottom: 0.0),
                                  child: Image.asset('images/kitchen.png',),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, right: 50.0, left: 0.0, bottom: 0.0),
                                child: Text(
                                  "Kitchen",
                                  style: TextStyle(
                                    color: Color(0xf004262F),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 10.0,  bottom: 10.0),
                                    child: Text(
                                      "5 Lights",
                                      style: TextStyle(
                                        color: Colors.amber[700],
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                              ),


                            ],
                          ),
                        ),
                      ),

                      //Bathroom Card

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10),
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              color: Colors.white),

                          child: Column(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0, right: 10.0, left:20.0, bottom: 0.0),
                                  child: Image.asset('images/bathtube.png',),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, right: 30.0, left: 0.0, bottom: 0.0),
                                child: Text(
                                  "Bathroom",
                                  style: TextStyle(
                                    color: Color(0xf004262F),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 10.0,  bottom: 10.0),
                                    child: Text(
                                      "1 Lights",
                                      style: TextStyle(
                                        color: Colors.amber[700],
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                              ),


                            ],
                          ),
                        ),
                      ),

                    ],
                  ),

                  Row(
                    children: <Widget>[

                      //Outdoor Card

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 15, bottom: 10),
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              color: Colors.white),

                          child: Column(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0, right: 10.0, left:20.0, bottom: 0.0),
                                  child: Image.asset('images/house.png',),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, right: 40.0, left: 0.0, bottom: 0.0),
                                child: Text(
                                  "Outdoor",
                                  style: TextStyle(
                                    color: Color(0xf004262F),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 10.0,  bottom: 10.0),
                                    child: Text(
                                      "5 Lights",
                                      style: TextStyle(
                                        color: Colors.amber[700],
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                              ),


                            ],
                          ),
                        ),
                      ),

                      //Balcony Card

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10),
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              color: Colors.white),

                          child: Column(
                            children: <Widget>[

                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0, right: 10.0, left:20.0, bottom: 0.0),
                                  child: Image.asset('images/balcony.png',),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, right: 40.0, left: 0.0, bottom: 0.0),
                                child: Text(
                                  "Balcony",
                                  style: TextStyle(
                                    color: Color(0xf004262F),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 10.0,  bottom: 10.0),
                                    child: Text(
                                      "2 Lights",
                                      style: TextStyle(
                                        color: Colors.amber[700],
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                              ),


                            ],
                          ),
                        ),
                      ),

                    ],
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
  } //build


} //state ends
