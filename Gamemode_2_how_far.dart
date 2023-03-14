import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:memomaster/BackGroundMusic.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Gamemode_2_how_far_Page extends StatefulWidget {
  const Gamemode_2_how_far_Page({Key? key}) : super(key: key);

  @override
  State<Gamemode_2_how_far_Page> createState() => Gamemode_2_how_far_PageState();
}

class Gamemode_2_how_far_PageState extends State<Gamemode_2_how_far_Page> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  int roundNumber = 1;
  final formkey = GlobalKey<FormState>();
  bool _visible = false;
  bool activateAttempt = false;
  bool activateShowNumbers = true;
  final myController = TextEditingController();

  incrementRoundNumber () {
    setState((){
      roundNumber++;
    });
  }

  static int nextNumber({required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);


  int? bigNumber;

  int _currentValue = 0;
  int barMaxValue = 0;
  int barChangeColorValue = 0;

  growBar1 () async {
    _currentValue = 0;
    barMaxValue = 1;
    barChangeColorValue = 1;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar2 () async {
    _currentValue = 0;
    barMaxValue = 1;
    barChangeColorValue = 1;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar3 () async {
    _currentValue = 0;
    barMaxValue = 2;
    barChangeColorValue = 1;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar4 () async {
    _currentValue = 0;
    barMaxValue = 3;
    barChangeColorValue = 2;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar5 () async {
    _currentValue = 0;
    barMaxValue = 3;
    barChangeColorValue = 2;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar6 () async {
    _currentValue = 0;
    barMaxValue = 3;
    barChangeColorValue = 2;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar7 () async {
    _currentValue = 0;
    barMaxValue = 4;
    barChangeColorValue = 3;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar8 () async {
    _currentValue = 0;
    barMaxValue = 4;
    barChangeColorValue = 3;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar9 () async {
    _currentValue = 0;
    barMaxValue = 7;
    barChangeColorValue = 6;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar10 () async {
    _currentValue = 0;
    barMaxValue = 9;
    barChangeColorValue = 8;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar11 () async {
    _currentValue = 0;
    barMaxValue = 11;
    barChangeColorValue = 10;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
  }
  growBar12 () async {
    _currentValue = 0;
    barMaxValue = 13;
    barChangeColorValue = 12;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar13 () async {
    _currentValue = 0;
    barMaxValue = 15;
    barChangeColorValue = 14;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar14 () async {
    _currentValue = 0;
    barMaxValue = 17;
    barChangeColorValue = 16;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}
  growBar15 () async {
    _currentValue = 0;
    barMaxValue = 19;
    barChangeColorValue = 18;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
}

  updateWinsHowFarNumber5() async
  {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    int oldWinsHowFarNumber5 = (pref.getInt('keyWinsHowFarNumber5') ?? 0);
    int winsHowFarNumber5 = oldWinsHowFarNumber5 + 1;
    if (winsHowFarNumber5 >= 5)
    {
      pref.setBool('keyIconWinsHowFarNumber5', true);
    }
    else
    {
      pref.setBool('keyIconWinsHowFarNumber5', false);
    }
    pref.setInt('keyWinsHowFarNumber5', winsHowFarNumber5);
  }

  updateWinsHowFarNumber10() async
  {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    int oldWinsHowFarNumber10 = (pref.getInt('keyWinsHowFarNumber10') ?? 0);
    int winsHowFarNumber10 = oldWinsHowFarNumber10 + 1;
    if (winsHowFarNumber10 >= 10)
    {
      pref.setBool('keyIconWinsHowFarNumber10', true);
    }
    else
    {
      pref.setBool('keyIconWinsHowFarNumber10', false);
    }
    pref.setInt('keyWinsHowFarNumber10', winsHowFarNumber10);
  }

  updateWinsHowFarNumber15() async
  {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    int oldWinsHowFarNumber15 = (pref.getInt('keyWinsHowFarNumber15') ?? 0);
    int winsHowFarNumber15 = oldWinsHowFarNumber15 + 1;
    if (winsHowFarNumber15 >= 15)
    {
      pref.setBool('keyIconWinsHowFarNumber15', true);
    }
    else
    {
      pref.setBool('keyIconWinsHowFarNumber15', false);
    }
    pref.setInt('keyWinsHowFarNumber15', winsHowFarNumber15);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    int number1 = nextNumber(min: 1, max: 9);
    int number2 = Random().nextInt(9);
    int number3 = Random().nextInt(9);
    int number4 = Random().nextInt(9);
    int number5 = Random().nextInt(9);
    int number6 = Random().nextInt(9);
    int number7 = Random().nextInt(9);
    int number8 = Random().nextInt(9);
    int number9 = Random().nextInt(9);
    int number10 = Random().nextInt(9);
    int number11 = Random().nextInt(9);
    int number12 = Random().nextInt(9);
    int number13 = Random().nextInt(9);
    int number14 = Random().nextInt(9);
    int number15 = Random().nextInt(9);

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
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Container(height: 30,),
                    Text('Game of Numbers',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 50),)
                    ),
                    Container(height: 5),
                    Text('Round $roundNumber',
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 30),)
                    ),
                    Container(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 500),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                            ),
                            width: 300.0,
                            height: 70.0,
                            child: Center(
                              child: Text('$bigNumber',
                                  style: GoogleFonts.abel(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35),)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(height: 10,),
                    ElevatedButton(
                      onPressed: activateShowNumbers
                          ? () async {
                        BackgroundMusic.buttonSound();
                        if (roundNumber == 1)
                          {
                            bigNumber = number1;
                            _visible = true;
                            setState((){});
                            growBar1();
                            await Future.delayed(const Duration(seconds: 2));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 2)
                          {
                            bigNumber = number1*10 + number2;
                            _visible = true;
                            setState((){});
                            growBar2();
                            await Future.delayed(const Duration(seconds: 2));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 3)
                          {
                            bigNumber = number1*100 + number2*10 + number3;
                            _visible = true;
                            setState((){});
                            growBar3();
                            await Future.delayed(const Duration(seconds: 3));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 4)
                          {
                            bigNumber = number1*1000 + number2*100 + number3*10 + number4;
                            _visible = true;
                            setState((){});
                            growBar4();
                            await Future.delayed(const Duration(seconds: 4));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 5)
                          {
                            bigNumber = number1*10000 + number2*1000 + number3*100 + number4*10 + number5;
                            _visible = true;
                            setState((){});
                            growBar5();
                            await Future.delayed(const Duration(seconds: 4));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 6)
                          {
                            bigNumber = number1*100000 + number2*10000 + number3*1000 + number4*100 + number5*10 + number6;
                            _visible = true;
                            setState((){});
                            growBar6();
                            await Future.delayed(const Duration(seconds: 4));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 7)
                          {
                            bigNumber = number1*1000000 + number2*100000 + number3*10000 + number4*1000 + number5*100 + number6*10 + number7;
                            _visible = true;
                            setState((){});
                            growBar7();
                            await Future.delayed(const Duration(seconds: 5));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 8)
                          {
                            bigNumber = number1*10000000 + number2*1000000 + number3*100000 + number4*10000 + number5*1000 + number6*100 + number7*10 + number8;
                            _visible = true;
                            setState((){});
                            growBar8();
                            await Future.delayed(const Duration(seconds: 5));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 9)
                          {
                            bigNumber = number1*100000000 + number2*10000000 + number3*1000000 + number4*100000 + number5*10000 + number6*1000 + number7*100 + number8*10 + number9;
                            _visible = true;
                            setState((){});
                            growBar9();
                            await Future.delayed(const Duration(seconds: 8));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 10)
                          {
                            bigNumber = number1*1000000000 + number2*100000000 + number3*10000000 + number4*1000000 + number5*100000 + number6*10000 + number7*1000 + number8*100 + number9*10 + number10;
                            _visible = true;
                            setState((){});
                            growBar10();
                            await Future.delayed(const Duration(seconds: 10));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 11)
                          {
                            bigNumber = number1*10000000000 + number2*1000000000 + number3*100000000 + number4*10000000 + number5*1000000 + number6*100000 + number7*10000 + number8*1000 + number9*100 + number10*10 + number11;
                            _visible = true;
                            setState((){});
                            growBar11();
                            await Future.delayed(const Duration(seconds: 12));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 12)
                          {
                            bigNumber = number1*100000000000 + number2*10000000000 + number3*1000000000 + number4*100000000 + number5*10000000 + number6*1000000 + number7*100000 + number8*10000 + number9*1000 + number10*100 + number11*10 + number12;
                            _visible = true;
                            setState((){});
                            growBar12();
                            await Future.delayed(const Duration(seconds: 14));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 13)
                          {
                            bigNumber = number1*1000000000000 + number2*100000000000 + number3*10000000000 + number4*1000000000 + number5*100000000 + number6*10000000 + number7*1000000 + number8*100000 + number9*10000 + number10*1000 + number11*100 + number12*10 + number13;
                            _visible = true;
                            setState((){});
                            growBar13();
                            await Future.delayed(const Duration(seconds: 16));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 14)
                          {
                            bigNumber = number1*10000000000000 + number2*1000000000000 + number3*100000000000 + number4*10000000000 + number5*1000000000 + number6*100000000 + number7*10000000 + number8*1000000 + number9*100000 + number10*10000 + number11*1000 + number12*100 + number13*10 + number14;
                            _visible = true;
                            setState((){});
                            growBar14();
                            await Future.delayed(const Duration(seconds: 18));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                        if (roundNumber == 15)
                          {
                            bigNumber = number1*100000000000000 + number2*10000000000000 + number3*1000000000000 + number4*100000000000 + number5*10000000000 + number6*1000000000 + number7*100000000 + number8*10000000 + number9*1000000 + number10*100000 + number11*10000 + number12*1000 + number13*100 + number14*10 + number15;
                            _visible = true;
                            setState((){});
                            growBar15();
                            await Future.delayed(const Duration(seconds: 20));
                            _visible = false;
                            activateAttempt = true;
                            activateShowNumbers = false;
                            setState((){});
                          }
                      }
                          : null,
                      style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue[800],
                          elevation: 10,
                          fixedSize: const Size(200, 50),
                          shape: const StadiumBorder()
                      ),
                      child: Text('Show numbers',
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22),)
                      ),
                    ),
                    Container(height: 10,),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: FAProgressBar(
                          currentValue: _currentValue.toDouble(),
                          size: 15,
                          maxValue: barMaxValue.toDouble(),
                          changeColorValue: barChangeColorValue,
                          changeProgressColor: Colors.red,
                          backgroundColor: Colors.white,
                          progressColor: Colors.green,
                          animatedDuration: const Duration(seconds: 1),
                          direction: Axis.horizontal,
                          verticalDirection: VerticalDirection.down,
                          borderRadius: BorderRadius.circular(10),
                          //formatValueFixed: 10,
                        )
                    ),
                    Container(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: TextFormField(
                        validator: (value) {
                          if (value != null && value.isEmpty)
                          {
                            return 'Please enter the numbers!';
                          }
                          return null;
                        },
                        maxLength: 30,
                        controller: myController,
                        enabled: activateAttempt,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.abel(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,),
                        ),
                        decoration: InputDecoration(
                            counterStyle: const TextStyle(color: Colors.orange),
                            errorStyle: const TextStyle(color: Colors.orange),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.orange,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.orange,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    ),
                    Container(height: 10,),
                    ElevatedButton(
                      onPressed: activateAttempt
                          ? () {
                        BackgroundMusic.buttonSound();
                        if (!formkey.currentState!.validate()) {
                          return;
                        }
                        if (roundNumber < 15) {
                          if (bigNumber.toString() == myController.text) {
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
                                  title: Text('Round $roundNumber completed!',textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,),
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text('You are smart! Continue with the next round, or stop right here.',textAlign: TextAlign.center,
                                          style: GoogleFonts.abel(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,),
                                          ),),
                                      ],
                                    ),
                                  ),
                                  actionsAlignment: MainAxisAlignment.spaceAround,
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Stop',textAlign: TextAlign.center,
                                        style: GoogleFonts.abel(
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,),
                                        ),),
                                      onPressed: () {
                                        BackgroundMusic.buttonSound();
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                        },
                                    ),
                                    TextButton(
                                      child: Text('Continue',textAlign: TextAlign.center,
                                        style: GoogleFonts.abel(
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,),
                                        ),),
                                      onPressed: () {
                                        BackgroundMusic.buttonSound();
                                        Navigator.of(context).pop();
                                        myController.clear();
                                        activateShowNumbers = true;
                                        activateAttempt = false;
                                        incrementRoundNumber();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          else
                          {
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
                                  title: Text('Ooooooof!',textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,),
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text('You were close! Next time you will get it, trust me. '
                                            'Your answer was ${myController.text}, but the right answer was $bigNumber.',textAlign: TextAlign.center,
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
                                        if (roundNumber>=6 && roundNumber <=10)
                                          {
                                            updateWinsHowFarNumber5();
                                          }
                                        if (roundNumber>=11 && roundNumber <=15)
                                          {
                                            updateWinsHowFarNumber5();
                                            updateWinsHowFarNumber10();
                                          }
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                        else
                          {
                            if (bigNumber.toString() == myController.text) {
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
                                    title: Text('Congratulations!',textAlign: TextAlign.center,
                                      style: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,),
                                      ),
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text('HOOOOOOOOLY YOU MADE IT !!! You now can consider yourself a MemoMaster',textAlign: TextAlign.center,
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
                                        child: Text('Back',textAlign: TextAlign.center,
                                          style: GoogleFonts.abel(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,),
                                          ),),
                                        onPressed: () {
                                          BackgroundMusic.buttonSound();
                                          updateWinsHowFarNumber15();
                                          Navigator.of(context).pop();
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
                                    title: Text('Ooooooof!',textAlign: TextAlign.center,
                                      style: GoogleFonts.abel(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,),
                                      ),
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text('You were close! Next time you will get it, trust me. '
                                              'Your answer was ${myController.text}, but the right answer was $bigNumber.',textAlign: TextAlign.center,
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
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          }
                      }
                          : null,
                      style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue[800],
                          elevation: 10,
                          fixedSize: const Size(200, 50),
                          shape: const StadiumBorder()
                      ),
                      child: Text('Verify',
                          style: GoogleFonts.abel(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22),)
                      ),
                    ),
                    Container(height: 5,),
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
                                          Text('This is "How far can you go" mode. All you have to do here is to press the "Show numbers" button and after that '
                                              'few numbers will fade in the screen. After few seconds, the numbers will '
                                              'disappear, and from that moment you will have a certain amount of seconds to guess '
                                              'what numbers were shown on the screen. Fill the TextBox and then click "Verify" to '
                                              'see how you have done. Every round, the numbers get more and more complicated. Does it have an ending? I do not know. Do you?',textAlign: TextAlign.center,
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
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}