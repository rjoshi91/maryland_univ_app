import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maryland_univ_app/screens/signin_screen.dart';
import 'package:maryland_univ_app/screens/splash_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  String _username,_email,_password= "";
  final _formKey = GlobalKey<FormState>();

  FocusNode _usernameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
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
                Padding(
                  padding: const EdgeInsets.only(top:100.0, left: 5.0),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                         setState(() {
                           Navigator
                               .of(context)
                               .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                         });
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
                            padding: const EdgeInsets.only(left: 5.0,),
                            child: Text(
                              "Back",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,),
                            ),
                          )
                      ),
                    ],
                  ),
                ),

                Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset('images/mask_group_2.png',)
                ),

              ],
            ),
          ),

          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 30.0, bottom: 10.0),
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,),
                ),
              )),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Form(
              key: _formKey,
              child: Container(
                height: 409,
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
                          autofocus: true,
                          textCapitalization: TextCapitalization.words,
                          keyboardType: TextInputType.text ,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            prefixIcon: Image.asset("images/icon_feather_user.png"),
                            hintText: "Username",
                          ),
                          textInputAction: TextInputAction.next,
                          validator: (name){
                            Pattern pattern =
                                r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(name))
                              return 'Invalid username';
                            else
                              return null;

                          },
                          onSaved: (name)=> _username = name,
                          onFieldSubmitted: (_){
                            fieldFocusChange(context, _usernameFocusNode, _emailFocusNode);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 20.0),
                        child: TextFormField(
                          focusNode: _passwordFocusNode,
                          keyboardType: TextInputType.text ,
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            prefixIcon: Image.asset("images/icon_feather_lock.png"),
                            hintText: "Password",
                          ),
                          textInputAction: TextInputAction.done,

                          validator: (password){
                            Pattern pattern =
                                r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(password))
                              return 'Invalid password';
                            else
                              return null;
                          },
                          onSaved: (password)=> _password = password,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 20.0),
                        child: TextFormField(
                          focusNode: _emailFocusNode,
                          keyboardType: TextInputType.emailAddress ,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            prefixIcon: Image.asset("images/icon_feather_lock.png"),
                            hintText: "Email",
                          ),
                          textInputAction: TextInputAction.next,
                          validator: (email)=>EmailValidator.validate(email)? null:"Invalid email address",
                          onSaved: (email)=> _email = email,
                          onFieldSubmitted: (_){
                            fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
                          },
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only( top:30.0,left: 40.0),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Color(0xf001A69F),
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'I have accepted the ',
                                      style: TextStyle(fontSize: 13, color: Colors.black)),
                                  TextSpan(
                                      text: 'Terms & Condition',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xf001A69F),
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()..onTap = () {
                                          print('You clicked on me!');
                                        })
                                ])),
                          ],
                        ),
                      ),
                     Padding(
                        padding: const EdgeInsets.only(left: 35.0,top:30.0, right: 35.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            color: Color(0xf001A69F),
                            onPressed: () {

                              if(_formKey.currentState.validate()){
                                _formKey.currentState.save();
                                toastMessage("Username: $_username\nEmail: $_email\nPassword: $_password");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignIn()
                                  ),
                                );
                              }
;
                            },
                            child: Text("SIGN UP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white)),
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

  void fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  void toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIos: 1,
        fontSize: 16.0
    );
  }


}
