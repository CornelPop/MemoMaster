import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/BackGroundMusic.dart';

class Need_help_Page extends StatefulWidget {
  const Need_help_Page({Key? key}) : super(key: key);

  @override
  State<Need_help_Page> createState() => Need_help_PageState();
}

class Need_help_PageState extends State<Need_help_Page>{

  bool _visible = true;

  @override
  void initState() {
    super.initState();
    toggleVisible((visible) {
      setState(() {
        _visible = visible;
      });
    });
  }

  void toggleVisible(void Function(bool) onToggle) {
    bool _visible = true;

    Timer.periodic(Duration(seconds: 1), (timer) {
      _visible = !_visible;
      onToggle(_visible);
    });
  }

  Widget build(BuildContext context)
  {
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
        body: CustomScrollView(
          slivers: <Widget> [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.lightBlue[800],
              expandedHeight: 716.0,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [StretchMode.zoomBackground],
                background: Stack(
                  alignment: Alignment.center,
                  fit: StackFit.loose,
                  children: [
                    Image.asset(
                      'assets/logobunbun.png',
                      fit: BoxFit.fill,
                      width: 250,
                      height: 250,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(40.0),
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AnimatedOpacity(
                                duration: const Duration(seconds: 1),
                                opacity: _visible ? 1.0 : 0.0,
                                child: const Icon(Icons.arrow_upward_rounded, size: 60, color: Colors.white,)
                            ),
                            AnimatedOpacity(
                              duration: const Duration(seconds: 1),
                              opacity: _visible ? 1.0 : 0.0,
                              child: Text('Swipe up!',
                                style: GoogleFonts.abel(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30),)
                              ),
                            ),
                            AnimatedOpacity(
                                duration: const Duration(seconds: 1),
                                opacity: _visible ? 1.0 : 0.0,
                                child: const Icon(Icons.arrow_upward_rounded, size: 60, color: Colors.white,)
                            ),
                          ],
                        ),
                    ),
              )
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.transparent,
                      child: Center(
                        child: Text('What is this game?',
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 35),)
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      color: Colors.transparent,
                      child: Center(
                        child: Text('Introducing the revolutionary new intelligence game that will take'
                            ' your brain power to the next level! With three thrilling game modes to '
                            'choose from - patterns, numbers, and words - you will be able'
                            ' to challenge yourself in new and exciting ways every time you play.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20),)
                        ),
                      ),
                    ),
                    Container(height: 10,),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 1,
                    ),
                    Container(
                      height: 300,
                      color: Colors.transparent,
                      child: Center(
                        child: Text('But this game is not just about testing your intelligence - it is about '
                            'tracking your progress and seeing how far you have come. With a personalized profile '
                            'section, you will be able to keep track of your scores and monitor your improvement '
                            'over time. Plus, with customizable music and volume options, you can tailor your '
                            'experience to suit your preferences and make sure you are playing at your best.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20),)
                        ),
                      ),
                    ),
                    Container(height: 10,),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 1,
                    ),
                    Container(
                      height: 270,
                      color: Colors.transparent,
                      child: Center(
                        child: Column(
                          children: [
                            Container(height: 30,),
                            Text('And if you ever have any questions or feedback, our contact us'
                                ' section is always available to help. Whether you need help with a '
                                'specific game mode or just want to share your thoughts, or why not, giving us an idea '
                                'of a new gamemode, we are here to '
                                'listen and support you.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.abel(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20),)
                            ),
                            Container(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.mail_rounded, size: 30, color: Colors.white,),
                                Container(width: 10,),
                                Text('CAP_Tech@yahoo.com',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20),)
                                ),
                              ],
                            )

                          ],
                        ),
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
                      ],
                    ),
                    Container(height: 20,)
                  ],
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}
