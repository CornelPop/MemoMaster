import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:memomaster/BackGroundMusic.dart';


class Gamemode_2_Page extends StatefulWidget {
  const Gamemode_2_Page({Key? key}) : super(key: key);

  @override
  State<Gamemode_2_Page> createState() => Gamemode_2_PageState();
}

class Gamemode_2_PageState extends State<Gamemode_2_Page> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  final formkey = GlobalKey<FormState>();
  bool _visible = false;
  bool activateAttempt = false;
  bool activateShowNumbers = true;
  final myController = TextEditingController();

  static int nextNumber({required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);

  int number1 = nextNumber(min: 1, max: 9);
  int number2 = Random().nextInt(9);
  int number3 = Random().nextInt(9);
  int? bigNumber;

  int _currentValue = 0;

  bool alreadyPressedShow = false;

  growBar () async{
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});await Future.delayed(const Duration(seconds: 1));
    _currentValue++;
    setState((){});
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  updateWinsNumbersBeginnerNumber() async
  {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    int oldWinsNumbersBeginnerNumber = (pref.getInt('keyWinsNumbersBeginnerNumber') ?? 0);
    int winsNumbersBeginnerNumber = oldWinsNumbersBeginnerNumber + 1;
    if (winsNumbersBeginnerNumber >= 5)
      {
        pref.setBool('keyIconNumbersBeginner', true);
      }
    else
      {
        pref.setBool('keyIconNumbersBeginner', false);
      }
    pref.setInt('keyWinsNumbersBeginnerNumber', winsNumbersBeginnerNumber);
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
                  Text('Difficulty: Beginner',
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
                      bigNumber = number1*100 + number2*10 + number3;
                      _visible = true;
                      setState((){});
                      growBar();
                      await Future.delayed(const Duration(seconds: 10));
                      _visible = false;
                      activateAttempt = true;
                      activateShowNumbers = false;
                      setState((){});
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
                        maxValue: 9,
                        changeColorValue: 9,
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
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                                    Text('You are smart! Now go back and try harder levels!',textAlign: TextAlign.center,
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
                                    updateWinsNumbersBeginnerNumber();
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
                                        Text('All you have to do here is to press the "Show numbers" button and after that '
                                            'few numbers will fade in the screen. After few seconds, the numbers will '
                                            'disappear, and from that moment you will have a certain amount of seconds to guess '
                                            'what numbers were shown on the screen. Fill the TextBox and then click "Verify" to '
                                            'see how you have done. ',textAlign: TextAlign.center,
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
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}