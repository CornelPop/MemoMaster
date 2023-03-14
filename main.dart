import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/BackGroundMusic.dart';
import 'package:memomaster/Gamemode_1_difficulty.dart';
import 'package:memomaster/Gamemode_2_difficulty.dart';
import 'package:memomaster/Gamemode_3_difficulty.dart';
import 'package:memomaster/Models/User.dart';
import 'package:memomaster/Profile.dart';
import 'package:memomaster/Services/auth.dart';
import 'package:memomaster/Sign_In.dart';
import 'package:memomaster/Spash_screen.dart';
import 'package:memomaster/main.dart';
import 'Settings.dart';
import 'Need_help.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';

Future <void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _showScreen = false;
  bool _isFirstTimePressed = true;
  bool _isProfileFirstTimePressed = true;

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
    _checkFirstTimePressed();
    _checkProfileFirstTimePressed();
  }

  Future<void> _checkFirstTimePressed() async {
    final pref = await SharedPreferences.getInstance();
    final isFirstTimePressed = pref.getBool('is_first_time_pressed') ?? true;
    setState(() {
      _isFirstTimePressed = isFirstTimePressed;
    });
  }

  Future<void> _checkProfileFirstTimePressed() async {
    final pref = await SharedPreferences.getInstance();
    final isProfileFirstTimePressed = pref.getBool(
        'is_profile_first_time_pressed') ?? true;
    setState(() {
      _isProfileFirstTimePressed = isProfileFirstTimePressed;
    });
  }

  Future<void> showScreen() async {
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      _showScreen = true;
    });
  }

  Future<void> _onButtonPressed() async {
    if (_isFirstTimePressed) {
      final pref = await SharedPreferences.getInstance();
      await pref.setBool('is_first_time_pressed', false);
      await pref.setDouble('keySoundVolume', 100.0);
      await pref.setDouble('keyMusicVolume', 100.0);
      await pref.setBool('keyIsMusic', true);
      await pref.setBool('keyIsSound', true);
      setState(() {
        _isFirstTimePressed = false;
      });
    }
  }

  Future<void> _onProfileButtonPressed() async {
    if (_isProfileFirstTimePressed) {
      final pref = await SharedPreferences.getInstance();
      await pref.setBool('is_profile_first_time_pressed', false);
      await pref.setInt('keyWinsPatternsBeginnerNumber', 0);
      await pref.setInt('keyWinsPatternsEasyNumber', 0);
      await pref.setInt('keyWinsPatternsMediumNumber', 0);
      await pref.setInt('keyWinsPatternsHardNumber', 0);
      await pref.setInt('keyWinsPatternsChallengingNumber', 0);
      await pref.setInt('keyWinsPatternsImpossibleNumber', 0);
      await pref.setInt('keyWinsNumbersBeginnerNumber', 0);
      await pref.setInt('keyWinsNumbersEasyNumber', 0);
      await pref.setInt('keyWinsNumbersMediumNumber', 0);
      await pref.setInt('keyWinsNumbersHardNumber', 0);
      await pref.setInt('keyWinsNumbersChallengingNumber', 0);
      await pref.setInt('keyWinsNumbersImpossibleNumber', 0);
      await pref.setInt('keyWinsWordsBeginnerNumber', 0);
      await pref.setInt('keyWinsWordsEasyNumber', 0);
      await pref.setInt('keyWinsWordsMediumNumber', 0);
      await pref.setInt('keyWinsWordsHardNumber', 0);
      await pref.setInt('keyWinsWordsChallengingNumber', 0);
      await pref.setInt('keyWinsWordsImpossibleNumber', 0);
      await pref.setInt('keyWinsHowFarNumber5', 0);
      await pref.setInt('keyWinsHowFarNumber10', 0);
      await pref.setInt('keyWinsHowFarNumber15', 0);
      setState(() {
        _isProfileFirstTimePressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    showScreen();
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
          body: AnimatedOpacity(
            opacity: _showScreen ? 1 : 0,
            duration: Duration(milliseconds: 500),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Container(height: 100,),
                      Text('Welcome',
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 45),)
                      ),
                      Container(height: 20,),
                      Text('Choose a gamomode',
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 35),)
                      ),
                      Container(height: 80,),
                      ElevatedButton(
                        onPressed: () {
                          BackgroundMusic.buttonSound();
                          Navigator.of(context).push(
                              _createRoutePatterns()
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[800],
                            elevation: 10,
                            fixedSize: const Size(200, 50),
                            shape: const StadiumBorder()
                        ),
                        child: Text('Game of Patterns',
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22),)
                        ),
                      ),
                      Container(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                          BackgroundMusic.buttonSound();
                          Navigator.of(context).push(
                              _createRouteNumbers()
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[800],
                            elevation: 10,
                            fixedSize: const Size(200, 50),
                            shape: const StadiumBorder()
                        ),
                        child: Text('Game of Numbers',
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22),)
                        ),
                      ),
                      Container(height: 20,),
                      ElevatedButton(
                        onPressed: () async {
                          BackgroundMusic.buttonSound();
                          Navigator.of(context).push(
                            _createRouteWords()
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[800],
                            elevation: 10,
                            fixedSize: const Size(200, 50),
                            shape: const StadiumBorder()
                        ),
                        child: Text('Game of Words',
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22),)
                        ),
                      ),
                      Container(height: 100,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                BackgroundMusic.buttonSound();
                                Navigator.of(context).push(
                                    _createRouteHelp()
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlue[800],
                                  elevation: 10,
                                  fixedSize: const Size(90, 50),
                                  shape: const StadiumBorder()
                              ),
                              child: const Center(
                                child: Icon(Icons.question_mark_rounded,
                                    size: 25),
                              )
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BackgroundMusic.buttonSound();
                                _onProfileButtonPressed();
                                Navigator.of(context).push(
                                    _createRouteProfile()
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlue[800],
                                  elevation: 10,
                                  fixedSize: const Size(90, 50),
                                  shape: const StadiumBorder()
                              ),
                              child: const Center(
                                child: Icon(Icons.account_circle_rounded,
                                    size: 25),
                              )
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BackgroundMusic.buttonSound();
                                /*Navigator.of(context).push(
                                    _createRouteProfile()
                                );*/
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlue[800],
                                  elevation: 10,
                                  fixedSize: const Size(90, 50),
                                  shape: const StadiumBorder()
                              ),
                              child: const Center(
                                child: Icon(Icons.leaderboard_rounded,
                                    size: 25),
                              )
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BackgroundMusic.buttonSound();
                                _onButtonPressed();
                                Navigator.of(context).push(
                                    _createRouteSettings()
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlue[800],
                                  elevation: 10,
                                  fixedSize: const Size(90, 50),
                                  shape: const StadiumBorder(),
                                  enableFeedback: false
                              ),
                              child: const Center(
                                child: Icon(Icons.settings_rounded, size: 25),
                              )
                          ),
                        ],
                      ),
                      Container(height: 20,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }

  Route _createRouteSettings() {
    return PageRouteBuilder(
      pageBuilder: (context, animation,
          secondaryAnimation) => const Settings_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _createRouteHelp() {
    return PageRouteBuilder(
      pageBuilder: (context, animation,
          secondaryAnimation) => const Need_help_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _createRouteProfile() {
    return PageRouteBuilder(
      pageBuilder: (context, animation,
          secondaryAnimation) => const Profile_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _createRoutePatterns() {
    return PageRouteBuilder(
      pageBuilder: (context, animation,
          secondaryAnimation) => const Gamemode_1_Difficulty_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _createRouteNumbers() {
    return PageRouteBuilder(
      pageBuilder: (context, animation,
          secondaryAnimation) => const Gamemode_2_Difficulty_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _createRouteWords() {
    return PageRouteBuilder(
      pageBuilder: (context, animation,
          secondaryAnimation) => const Gamemode_3_Difficulty_Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
