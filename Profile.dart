import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/Services/Database.dart';
import 'package:memomaster/Services/Get_data_widget.dart';
import 'package:memomaster/Services/auth.dart';
import 'package:memomaster/Sign_In.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:memomaster/BackGroundMusic.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => Profile_PageState();
}

class Profile_PageState extends State<Profile_Page> {

  static late int winsPatternsBeginnerNumber;
  static late int winsPatternsEasyNumber;
  static late int winsPatternsMediumNumber;
  static late int winsPatternsHardNumber;
  static late int winsPatternsChallengingNumber;
  static late int winsPatternsImpossibleNumber;

  bool? iconPatternsBeginner;
  bool? iconPatternsEasy;
  bool? iconPatternsMedium;
  bool? iconPatternsHard;
  bool? iconPatternsChallenging;
  bool? iconPatternsImpossible;

  static late int winsNumbersBeginnerNumber;
  static late int winsNumbersEasyNumber;
  static late int winsNumbersMediumNumber;
  static late int winsNumbersHardNumber;
  static late int winsNumbersChallengingNumber;
  static late int winsNumbersImpossibleNumber;

  static late int winsHowFarNumber5;
  static late int winsHowFarNumber10;
  static late int winsHowFarNumber15;

  bool? iconNumbersBeginner;
  bool? iconNumbersEasy;
  bool? iconNumbersMedium;
  bool? iconNumbersHard;
  bool? iconNumbersChallenging;
  bool? iconNumbersImpossible;

  bool? iconHowFarNumber5;
  bool? iconHowFarNumber10;
  bool? iconHowFarNumber15;

  static late int winsWordsBeginnerNumber;
  static late int winsWordsEasyNumber;
  static late int winsWordsMediumNumber;
  static late int winsWordsHardNumber;
  static late int winsWordsChallengingNumber;
  static late int winsWordsImpossibleNumber;

  bool? iconWordsBeginner;
  bool? iconWordsEasy;
  bool? iconWordsMedium;
  bool? iconWordsHard;
  bool? iconWordsChallenging;
  bool? iconWordsImpossible;

  @override
  void initState() {
    super.initState();
    setWinsNumber();
    initializeProfile();
  }

  Future<void> setWinsNumber() async //aici e pt iconite doar
  {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    setState (() {
      winsPatternsBeginnerNumber = pref.getInt('keyWinsPatternsBeginnerNumber')!;
      winsPatternsEasyNumber = pref.getInt('keyWinsPatternsEasyNumber')!;
      winsPatternsMediumNumber = pref.getInt('keyWinsPatternsMediumNumber')!;
      winsPatternsHardNumber = pref.getInt('keyWinsPatternsHardNumber')!;
      winsPatternsChallengingNumber =
          pref.getInt('keyWinsPatternsChallengingNumber')!;
      winsPatternsImpossibleNumber =
          pref.getInt('keyWinsPatternsImpossibleNumber')!;

      iconPatternsBeginner = pref.getBool('keyIconPatternsBeginner');
      iconPatternsEasy = pref.getBool('keyIconPatternsEasy');
      iconPatternsMedium = pref.getBool('keyIconPatternsMedium');
      iconPatternsHard = pref.getBool('keyIconPatternsHard');
      iconPatternsChallenging = pref.getBool('keyIconPatternsChallenging');
      iconPatternsImpossible = pref.getBool('keyIconPatternsImpossible');
/*
      winsNumbersBeginnerNumber = pref.getInt('keyWinsNumbersBeginnerNumber');
      winsNumbersEasyNumber = pref.getInt('keyWinsNumbersEasyNumber');
      winsNumbersMediumNumber = pref.getInt('keyWinsNumbersMediumNumber');
      winsNumbersHardNumber = pref.getInt('keyWinsNumbersHardNumber');
      winsNumbersChallengingNumber =
          pref.getInt('keyWinsNumbersChallengingNumber');
      winsNumbersImpossibleNumber =
          pref.getInt('keyWinsNumbersImpossibleNumber');

      winsHowFarNumber5 = pref.getInt('keyWinsHowFarNumber5');
      winsHowFarNumber10 = pref.getInt('keyWinsHowFarNumber10');
      winsHowFarNumber15 = pref.getInt('keyWinsHowFarNumber15');
*/
      iconNumbersBeginner = pref.getBool('keyIconNumbersBeginner');
      iconNumbersEasy = pref.getBool('keyIconNumbersEasy');
      iconNumbersMedium = pref.getBool('keyIconNumbersMedium');
      iconNumbersHard = pref.getBool('keyIconNumbersHard');
      iconNumbersChallenging = pref.getBool('keyIconNumbersChallenging');
      iconNumbersImpossible = pref.getBool('keyIconNumbersImpossible');

      iconHowFarNumber5 = pref.getBool('keyIconHowFarNumber5');
      iconHowFarNumber10 = pref.getBool('keyIconHowFarNumber10');
      iconHowFarNumber15 = pref.getBool('keyIconHowFarNumber15');
/*
      winsWordsBeginnerNumber = pref.getInt('keyWinsWordsBeginnerNumber');
      winsWordsEasyNumber = pref.getInt('keyWinsWordsEasyNumber');
      winsWordsMediumNumber = pref.getInt('keyWinsWordsMediumNumber');
      winsWordsHardNumber = pref.getInt('keyWinsWordsHardNumber');
      winsWordsChallengingNumber = pref.getInt('keyWinsWordsChallengingNumber');
      winsWordsImpossibleNumber = pref.getInt('keyWinsWordsImpossibleNumber');
*/
      iconWordsBeginner = pref.getBool('keyIconWordsBeginner');
      iconWordsEasy = pref.getBool('keyIconWordsEasy');
      iconWordsMedium = pref.getBool('keyIconWordsMedium');
      iconWordsHard = pref.getBool('keyIconWordsHard');
      iconWordsChallenging = pref.getBool('keyIconWordsChallenging');
      iconWordsImpossible = pref.getBool('keyIconWordsImpossible');
    });
  }

  Future<void> initializeProfile() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final int? _winsPatternsBeginnerNumber = pref.getInt('keyWinsPatternsBeginnerNumber');
    final int? _winsPatternsEasyNumber = pref.getInt('keyWinsPatternsEasyNumber');
    final int? _winsPatternsMediumNumber = pref.getInt('keyWinsPatternsMediumNumber');
    final int? _winsPatternsHardNumber = pref.getInt('keyWinsPatternsHardNumber');
    final int? _winsPatternsChallengingNumber = pref.getInt('keyWinsPatternsChallengingNumber');
    final int? _winsPatternsImpossibleNumber = pref.getInt('keyWinsPatternsImpossibleNumber');
    final int? _winsNumbersBeginnerNumber = pref.getInt('keyWinsNumbersBeginnerNumber');
    final int? _winsNumbersEasyNumber = pref.getInt('keyWinsNumbersEasyNumber');
    final int? _winsNumbersMediumNumber = pref.getInt('keyWinsNumbersMediumNumber');
    final int? _winsNumbersHardNumber = pref.getInt('keyWinsNumbersHardNumber');
    final int? _winsNumbersChallengingNumber = pref.getInt('keyWinsNumbersChallengingNumber');
    final int? _winsNumbersImpossibleNumber = pref.getInt('keyWinsNumbersImpossibleNumber');
    final int? _winsHowFarNumber5 = pref.getInt('keyWinsHowFarNumber5');
    final int? _winsHowFarNumber10 = pref.getInt('keyWinsHowFarNumber10');
    final int? _winsHowFarNumber15 = pref.getInt('keyWinsHowFarNumber15');
    final int? _winsWordsBeginnerNumber = pref.getInt('keyWinsWordsBeginnerNumber');
    final int? _winsWordsEasyNumber = pref.getInt('keyWinsWordsEasyNumber');
    final int? _winsWordsMediumNumber = pref.getInt('keyWinsWordsMediumNumber');
    final int? _winsWordsHardNumber = pref.getInt('keyWinsWordsHardNumber');
    final int? _winsWordsChallengingNumber = pref.getInt('keyWinsWordsChallengingNumber');
    final int? _winsWordsImpossibleNumber = pref.getInt('keyWinsWordsHardNumber');

    setState(() {
      winsPatternsBeginnerNumber = _winsPatternsBeginnerNumber ?? 0;
      winsPatternsEasyNumber = _winsPatternsEasyNumber ?? 0;
      winsPatternsMediumNumber = _winsPatternsMediumNumber ?? 0;
      winsPatternsHardNumber = _winsPatternsHardNumber ?? 0;
      winsPatternsChallengingNumber = _winsPatternsChallengingNumber ?? 0;
      winsPatternsImpossibleNumber = _winsPatternsImpossibleNumber ?? 0;
      winsNumbersBeginnerNumber = _winsNumbersBeginnerNumber ?? 0;
      winsNumbersEasyNumber = _winsNumbersEasyNumber ?? 0;
      winsNumbersMediumNumber = _winsNumbersMediumNumber ?? 0;
      winsNumbersHardNumber = _winsNumbersHardNumber ?? 0;
      winsNumbersChallengingNumber = _winsNumbersChallengingNumber ?? 0;
      winsNumbersImpossibleNumber = _winsNumbersImpossibleNumber ?? 0;
      winsHowFarNumber5 = _winsHowFarNumber5 ?? 0;
      winsHowFarNumber10 = _winsHowFarNumber10 ?? 0;
      winsHowFarNumber15 = _winsHowFarNumber15 ?? 0;
      winsWordsBeginnerNumber = _winsWordsBeginnerNumber ?? 0;
      winsWordsEasyNumber = _winsWordsEasyNumber ?? 0;
      winsWordsMediumNumber = _winsWordsMediumNumber ?? 0;
      winsWordsHardNumber = _winsWordsHardNumber ?? 0;
      winsWordsChallengingNumber = _winsWordsChallengingNumber ?? 0;
      winsWordsImpossibleNumber = _winsWordsImpossibleNumber ?? 0;
    });
  }


  @override
  Widget build(BuildContext context)
  {

    final AuthService _auth = AuthService();
    String username = 'ceaw';

    Get_Data_Widget();

    return StreamProvider<QuerySnapshot?>.value(
      value: Database_service().data,
      initialData: null,
      child: Container(
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
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle_rounded,
                      size: 100, // Set the size of the icon here
                      color: Colors.white, // Replace this with your own color
                    ),
                    Text("$username Profile",
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22),)
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                  length: 2,
                  child: Expanded(
                    child: Column(
                      children: [
                        const TabBar(
                          tabs: [
                            Tab(text: 'Account details',),
                            Tab(text: 'Achievements',),
                          ],
                        ),
                        Expanded(
                            child: TabBarView(
                              children: [
                                Center(
                                    child: ListView(
                                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                        children: [
                                          Container(height: 15,),
                                          Container(
                                            height: 50,
                                            color: Colors.transparent,
                                            child: Center(
                                              child: SizedBox(
                                                //height: 50,
                                                width: 280,
                                                child: Text('Email address',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.abel(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),),
                                                ),
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
                                          Container(height: 10,),
                                          Container(
                                            height: 50,
                                            color: Colors.transparent,
                                            child: Center(
                                              child: SizedBox(
                                                //height: 50,
                                                width: 280,
                                                child: Text('Email address',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.abel(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),),
                                                ),
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
                                          Container(height: 10,),
                                          Container(
                                            height: 50,
                                            color: Colors.transparent,
                                            child: Center(
                                              child: SizedBox(
                                                //height: 50,
                                                width: 280,
                                                child: Text('First time logged in',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.abel(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),),
                                                ),
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
                                          Container(height: 10,),
                                          Container(
                                            height: 50,
                                            color: Colors.transparent,
                                            child: Center(
                                              child: SizedBox(
                                                //height: 50,
                                                width: 280,
                                                child: Text('Last time seen online',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.abel(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),),
                                                ),
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
                                        ]
                                    )
                                ),
                                Center(
                                    child: ListView(
                                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                      children: <Widget>[
                                        Container(height: 20,),
                                        Text('Game of Patterns',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.abel(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35),)
                                        ),
                                        Container(height: 10,),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          height: 1,
                                        ),
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Patterns, difficulty Beginner, 5 times. ($winsPatternsBeginnerNumber/5)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconPatternsBeginner == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Patterns, difficulty Easy, 10 times. ($winsPatternsEasyNumber/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconPatternsEasy == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Patterns, difficulty Medium, 10 times. ($winsPatternsMediumNumber/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconPatternsMedium == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Patterns, difficulty Hard, 15 times. ($winsPatternsHardNumber/15)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconPatternsHard == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Patterns, difficulty Challenging, 20 times. ($winsPatternsChallengingNumber/20)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconPatternsChallenging == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Patterns, difficulty Impossible, 30 times. ($winsPatternsImpossibleNumber/30)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconPatternsImpossible == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 50,),
                                        Text('Game of Numbers',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.abel(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35),)
                                        ),
                                        Container(height: 10,),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          height: 1,
                                        ),
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Numbers, difficulty Beginner, 5 times. ($winsNumbersBeginnerNumber/5)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconNumbersBeginner == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Numbers, difficulty Easy, 10 times. ($winsNumbersEasyNumber/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconNumbersEasy == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Numbers, difficulty Medium, 10 times. ($winsNumbersMediumNumber/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconNumbersMedium == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Numbers, difficulty Hard, 15 times. ($winsNumbersHardNumber/15)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconNumbersHard == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Numbers, difficulty Challenging, 20 times. ($winsNumbersChallengingNumber/20)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconNumbersChallenging == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Numbers, difficulty Impossible, 30 times. ($winsNumbersImpossibleNumber/30)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconNumbersImpossible == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Complete round 5 in "How far can you go" mode 5 times. ($winsHowFarNumber5/5)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconHowFarNumber5 == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Complete round 10 in "How far can you go" mode 10 times. ($winsHowFarNumber10/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconHowFarNumber15 == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Complete round 15 in "How far can you go" mode 15 times. ($winsHowFarNumber15/15)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconHowFarNumber15 == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 50,),
                                        Text('Game of Words',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.abel(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35),)
                                        ),
                                        Container(height: 10,),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          height: 1,
                                        ),
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Words, difficulty Beginner, 5 times. ($winsWordsBeginnerNumber/5)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconWordsBeginner == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Words, difficulty Easy, 10 times. ($winsWordsEasyNumber/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconWordsEasy == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Words, difficulty Medium, 10 times. ($winsWordsMediumNumber/10)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconWordsMedium == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Words, difficulty Hard, 15 times. ($winsWordsHardNumber/15)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconWordsHard == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Words, difficulty Challenging, 20 times. ($winsWordsChallengingNumber/20)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconWordsChallenging == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 10,),
                                        Container(
                                          height: 50,
                                          color: Colors.transparent,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children : [
                                                SizedBox(
                                                  //height: 50,
                                                  width: 280,
                                                  child: Text('Win the Game of Words, difficulty Impossible, 30 times. ($winsWordsImpossibleNumber/30)',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.abel(
                                                      textStyle: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),),
                                                  ),
                                                ),
                                                iconWordsImpossible == true
                                                    ? const Icon(Icons.check_box,
                                                  color: Colors.green,
                                                  size: 35,
                                                )
                                                    : const Icon(Icons.check_box,
                                                  size: 35,
                                                )
                                              ]
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
                                        Container(height: 40,),
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
                                              onPressed: () async {
                                                BackgroundMusic.buttonSound();
                                                await _auth.signOut();
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Sign_in_Page()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.lightBlue[800],
                                                  elevation: 10,
                                                  fixedSize: const Size(120, 50),
                                                  shape: const StadiumBorder()
                                              ),
                                              child: Text('Sign out',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.abel(
                                                  textStyle: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),),
                                              ),
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
                                                              Text('This is your "Profile Page". Here '
                                                                  'you can see all your stats and achievements. Make all '
                                                                  'the check boxes green and become one of the best int this game.',textAlign: TextAlign.center,
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
                                                              ),
                                                            ),
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
                                        Container(height: 50,)
                                      ],
                                    )
                                ),
                              ],
                            ),
                        )
                      ]
                    )
                  )
              )
            ],
          ),
        )
      ),
    );
  }
}
