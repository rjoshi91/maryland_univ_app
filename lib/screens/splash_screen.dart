import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LetsGetStartedSplashScreen extends StatefulWidget {
  @override
  _LetsGetStartedSplashScreenState createState() => new _LetsGetStartedSplashScreenState();
}

class _LetsGetStartedSplashScreenState extends State<LetsGetStartedSplashScreen> with SingleTickerProviderStateMixin {

  AnimationController animationController;

    startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/ControlPanelScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 5),
    );
    animationController.repeat();
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
                Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset('images/mask_group_2.png', width: 990, cacheHeight: 590,)),
              ],
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: AnimatedBuilder(
                  animation: animationController,
                  child: Image.asset(
                    'images/group_61.png', width: 100.0, height: 100.0,
                  ),
                  builder: (BuildContext context, Widget _widget) {
                    return new Transform.rotate(
                      angle: animationController.value * 12,
                      child: _widget,
                    );
                  }
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Let's get you started",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ]
        ),
      ),
    );
  }


}