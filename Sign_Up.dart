import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/BackGroundMusic.dart';
import 'package:memomaster/Services/auth.dart';
import 'package:memomaster/Shared/Loading_animation.dart';
import 'package:memomaster/Sign_In.dart';

class Sign_up_Page extends StatefulWidget {
  const Sign_up_Page({Key? key}) : super(key: key);

  @override
  State<Sign_up_Page> createState() => Sign_up_PageState();
}

class Sign_up_PageState extends State<Sign_up_Page> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool showPass = false;
  bool isChecked = false;
  bool loading = false;

  String username = '';
  String email = '';
  String password = '';
  String secondPassword = '';
  String error = '';

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
                    Text('Sign up',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 45),)
                    ),
                    Container(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        validator: (String ?val) {
                          return val!.isEmpty ? 'Enter a username!' : null;
                        },
                        onChanged: (val) {
                          setState(() {
                            username = val;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: "Enter your username",
                            suffixIcon: const Icon(Icons.account_circle_rounded),
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
                          return val!.contains("@") ? null : 'Enter a valid email address!';
                        },
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            suffixIcon: const Icon(Icons.mail_rounded),
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
                    Container(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        validator: (String ?val) {
                          return val!.compareTo(password) != 0 ? 'Passwords do not match!' : null;
                        },
                        onChanged: (val) {
                          setState(() {
                            secondPassword = val;
                          });
                        },
                        obscureText: !showPass,
                        decoration: InputDecoration(
                            hintText: "Re-enter your password",
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
                    Container(height: 20,),
                    ElevatedButton(
                      onPressed: () async {
                        BackgroundMusic.buttonSound();
                        if (_formKey.currentState!.validate())
                        {
                          setState (() => loading = true);
                          dynamic result = await _auth.signUp(email, password);
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
                                          Text('There already is a player with that email address.',textAlign: TextAlign.center,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sign_in_Page()),
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
                      child: Text('Sign up',
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22),)
                      ),
                    ),
                  Container(height: 60,),
                  Text("Already have an account?",
                      style: GoogleFonts.abel(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 22),)
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text("Log in",
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.blue,
                              fontSize: 22),)
                    )
                  ),
                    Container(height: 20,)
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