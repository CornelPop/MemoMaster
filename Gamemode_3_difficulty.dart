import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Gamemode_3.dart';
import 'Gamemode_3_easy.dart';
import 'Gamemode_3_medium.dart';
import 'Gamemode_3_hard.dart';
import 'Gamemode_3_challenging.dart';
import 'Gamemode_3_impossible.dart';
import 'package:memomaster/BackGroundMusic.dart';


class Gamemode_3_Difficulty_Page extends StatefulWidget {
  const Gamemode_3_Difficulty_Page({Key? key}) : super(key: key);

  @override
  State<Gamemode_3_Difficulty_Page> createState() => Gamemode_3_Difficulty_Page_State();
}

class Gamemode_3_Difficulty_Page_State extends State<Gamemode_3_Difficulty_Page> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Center(
            child: Column(
                children: [
                  Container(height: 50,),
                  Text('Choose the difficulty',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.abel(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 35),)
                  ),
                  Container(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gamemode_3_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(200, 50),
                        shape: const StadiumBorder()
                    ),
                    child: Text('Beginner',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 15,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gamemode_3_easy_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(200, 50),
                        shape: const StadiumBorder()
                    ),
                    child: Text('Easy',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 15,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gamemode_3_medium_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(200, 50),
                        shape: const StadiumBorder()
                    ),
                    child: Text('Medium',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 15,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gamemode_3_hard_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(200, 50),
                        shape: const StadiumBorder()
                    ),
                    child: Text('Hard',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 15,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gamemode_3_challenging_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(200, 50),
                        shape: const StadiumBorder()
                    ),
                    child: Text('Challenging',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 15,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gamemode_3_impossible_Page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(200, 50),
                        shape: const StadiumBorder()
                    ),
                    child: Text('Mission Impossible',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                      BackgroundMusic.buttonSound();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[800],
                        elevation: 10,
                        fixedSize: const Size(250, 75),
                        shape: const StadiumBorder()
                    ),
                    child: Text('How far can you go?',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ),
                  Container(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            BackgroundMusic.buttonSound();
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue[800],
                              elevation: 10,
                              fixedSize: const Size(90, 50),
                              shape: const StadiumBorder()
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_back_rounded, size: 25),
                          )
                      ),
                      Container(width: 20,),
                      ElevatedButton(
                          onPressed: () {
                            BackgroundMusic.buttonSound();
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.lightBlue[800],
                                  elevation: 24,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: Text('Need help?',textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,),
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text('This is the "Choose the difficulty page" where you can '
                                            'select on what difficulty you want to play this game mode'
                                            '. The difficulties range between Beginner, which is extremely '
                                            'easy, up to Mission Impossible, where...well the name says it all.'
                                            'The "How far can you go" mode, gives you the opportunity to go as '
                                            'long as you do not make a mistake.',textAlign: TextAlign.center,
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
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue[800],
                              elevation: 10,
                              fixedSize: const Size(90, 50),
                              shape: const StadiumBorder()
                          ),
                          child: const Center(
                            child: Icon(Icons.question_mark_rounded, size: 25),
                          )
                      ),
                    ],
                  ),
                  Container(height: 20,)
                ]
            ),
          ),
        ),
      ),
    );
  }
}