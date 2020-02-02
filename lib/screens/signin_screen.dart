import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maryland_univ_app/screens/signup_screen.dart';
import 'package:maryland_univ_app/screens/splash_screen.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  String _username,
      _password = "";
  final _formKey = GlobalKey<FormState>();
  FocusNode _usernameFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();


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
                    child: Image.asset(
                      'images/mask_group_2.png', width: 990, height: 390,)),
              ],
            ),
          ),

          Padding(
            padding:
            const EdgeInsets.only(left: 30.0, right: 280.0, bottom: 20.0),
            child: Divider(
              color: Colors.white,
              thickness: 5.0,
            ),
          ),

          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 10.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              )),

          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  "to Room Control",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Form(
              key: _formKey,
              child: Container(
                height: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0)),
                    color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 30.0),
                        child: TextFormField(
                          focusNode: _usernameFocusNode,
                          textCapitalization: TextCapitalization.words,
                          autocorrect: false,
                          enableSuggestions: false,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0
                                )
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            prefixIcon: Image.asset(
                                "images/icon_feather_user.png"),
                            hintText: "Username",
                          ),
                          textInputAction: TextInputAction.next,
                          validator: (name) {
                            Pattern pattern =
                                r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(name))
                              return 'Invalid username';
                            else
                              return null;
                          },
                          onSaved: (name) => _username = name,
                          onFieldSubmitted: (_) {
                            fieldFocusChange(context, _usernameFocusNode,
                                _passwordFocusNode);
                          },

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 20.0),
                        child: TextFormField(
                          focusNode: _passwordFocusNode,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            prefixIcon: Image.asset(
                                "images/icon_feather_lock.png"),
                            hintText: "Password",
                          ),
                          textInputAction: TextInputAction.done,

                          validator: (password) {
                            Pattern pattern =
                                r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(password))
                              return 'Invalid password';
                            else
                              return null;
                          },
                          onSaved: (password) => _password = password,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 35.0, right: 35.0),
                        child: SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: 40,
                          child: RaisedButton(
                            color: Color(0xf001A69F),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                toastMessage(
                                    "Username: $_username\nPassword: $_password");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                      LetsGetStartedSplashScreen()
                                  ),
                                );
                              }
                            },
                            child: Text("SIGN IN",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white)),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, top: 50.0),
                        child: Center(
                          child: Row(
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 60),
                                child: Text("Don't have an account?",
                                  style: TextStyle(fontSize: 15.0),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()),
                                    );
                                  },

                                  child: Text("SIGN UP",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xf001A69F),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void fieldFocusChange(BuildContext context, FocusNode currentFocus,
      FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIos: 1,
        fontSize: 16.0
    );
  }
}
