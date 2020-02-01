import 'package:flutter/material.dart';
import 'package:maryland_univ_app/screens/control_panel_screen.dart';
import 'package:maryland_univ_app/screens/signup_screen.dart';
import 'package:maryland_univ_app/screens/splash_screen.dart';
import 'package:maryland_univ_app/screens/room_functioning_screen.dart';
import 'package:maryland_univ_app/screens/signin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
      routes: <String, WidgetBuilder>{
        '/SplashPanelScreen': (BuildContext context) => new LetsGetStartedSplashScreen(),
        '/SignUpScreen': (BuildContext context) => new SignUp(),
        '/ControlPanelScreen': (BuildContext context) => new ControlPanelScreen(),
        '/RoomFunctioningScreen': (BuildContext context) => new RoomFunctioningScreen()
      },

    );
  }
}