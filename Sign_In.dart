import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/BackGroundMusic.dart';
import 'package:memomaster/Models/User.dart';
import 'package:memomaster/Services/auth.dart';
import 'package:memomaster/Shared/Loading_animation.dart';
import 'package:memomaster/Sign_Up.dart';
import 'package:memomaster/main.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sign_in_Page extends StatefulWidget {
  const Sign_in_Page({Key? key}) : super(key: key);

  @override
  State<Sign_in_Page> createState() => Sign_in_PageState();
}

class Sign_in_PageState extends State<Sign_in_Page> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  bool showPass = false;
  bool isChecked = false;
  bool loading = false;

  @override
  Widget build(BuildContext context) {

    return loading ? Loading() : Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.indigo,
                Colors.purple,
              ]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(height: 100,),
                    Text('Login',
                    style: GoogleFonts.abel(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 45),)
                    ),
                    Container(height: 100,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        validator: (String ?val) {
                          return val!.contains("@") ? null : 'Enter a valid email address!';
                        },
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: "Enter your username",
                            suffixIcon: Icon(Icons.account_circle_rounded),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    Container(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        validator: (String ?val) {
                          return val!.length <= 6? 'Enter a password with more than 6 characters!' : null;
                        },
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                        obscureText: !showPass,
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState((){
                                  showPass = !showPass;
                                });
                              },
                              child: showPass ? Icon(Icons.disabled_visible_rounded) : Icon(Icons.remove_red_eye_rounded),
                            ),
                            //disabled_visible_rounded
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    Container(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Hello, world!'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                                //some function
                              },
                              child: const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  decorationColor: Colors.white,
                                  color: Colors.white,)
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(height: 30,),
                    ElevatedButton(
                      onPressed: () async {
                        BackgroundMusic.buttonSound();
                        if (_formKey.currentState!.validate())
                        {
                          dynamic result = await _auth.signIn(email, password);

                          if (result == null)
                          {
                            setState (() => loading = false);
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.redAccent,
                                  elevation: 24,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: Text('Error',textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,),
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text('Could not sign in with those credential.',textAlign: TextAlign.center,
                                          style: GoogleFonts.abel(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,),
                                          ),),
                                      ],
                                    ),
                                  ),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Ok',textAlign: TextAlign.center,
                                        style: GoogleFonts.abel(
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,),
                                        ),),
                                      onPressed: () {
                                        BackgroundMusic.buttonSound();
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          else
                          {
                            setState (() => loading = true);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage()),
                            );
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue[800],
                          elevation: 10,
                          fixedSize: const Size(200, 50),
                          shape: const StadiumBorder()
                      ),
                      child: Text('Login',
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22),)
                      ),
                    ),
                    Container(height: 80,),
                    Text("Don't have an account?",
                      style: GoogleFonts.abel(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 22),)
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Sign_up_Page()),
                        );
                      },
                      child: Text("Create account",
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.blue,
                                fontSize: 22),)
                      ),
                    ),
                    Container(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}