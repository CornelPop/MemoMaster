import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:math';
import 'package:memomaster/BackGroundMusic.dart';

class Gamemode_1_easy_Page extends StatefulWidget {
  const Gamemode_1_easy_Page({Key? key}) : super(key: key);

  @override
  State<Gamemode_1_easy_Page> createState() => Gamemode_1_easy_PageState();
}

class Gamemode_1_easy_PageState extends State<Gamemode_1_easy_Page> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  Color? color_container0 = Colors.deepPurpleAccent;
  Color? color_container1 = Colors.deepPurpleAccent;
  Color? color_container2 = Colors.deepPurpleAccent;
  Color? color_container3 = Colors.deepPurpleAccent;
  Color? color_container4 = Colors.deepPurpleAccent;
  Color? color_container5 = Colors.deepPurpleAccent;
  Color? color_container6 = Colors.deepPurpleAccent;
  Color? color_container7 = Colors.deepPurpleAccent;
  Color? color_container8 = Colors.deepPurpleAccent;

  var position_x = [-1, -1, -1, -1, -1];
  var position_y = [-1, -1, -1, -1, -1];
  bool enablePressing = false;

  int counter = 0;

  void incrementCounter() {
    counter++;
    setState((){});
    if (counter == 5)
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
                  updateWinsPatternsEasyNumber();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );      }
  }

  bool activateVisibility1 = false;
  bool activateVisibility2 = false;
  bool activateVisibility3 = false;
  bool activateVisibility4 = false;
  bool activateVisibility5 = false;
  bool activateVisibility6 = false;
  bool activateVisibility7 = false;
  bool activateVisibility8 = false;
  bool activateVisibility9 = false;

  showCheckMark1() async {
    activateVisibility1 = true;
    setState((){});
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility1 = false;
    setState((){});
  }
  showCheckMark2() async {
    activateVisibility2 = true;
    setState((){});
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility2 = false;
    setState((){});
  }
  showCheckMark3() async {
    setState((){});
    activateVisibility3 = true;
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility3 = false;
    setState((){});
  }
  showCheckMark4() async {
    activateVisibility4 = true;
    setState((){});
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility4 = false;
    setState((){});
  }
  showCheckMark5() async {
    setState((){});
    activateVisibility5 = true;
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility5 = false;
    setState((){});
  }
  showCheckMark6() async {
    activateVisibility6 = true;
    setState((){});
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility6 = false;
    setState((){});
  }
  showCheckMark7() async {
    activateVisibility7 = true;
    setState((){});
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility7 = false;
    setState((){});
  }
  showCheckMark8() async {
    activateVisibility8 = true;
    setState((){});
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility8 = false;
    setState((){});
  }
  showCheckMark9() async {
    setState((){});
    activateVisibility9 = true;
    await Future.delayed(const Duration(milliseconds: 500));
    activateVisibility9 = false;
    setState((){});
  }

  modifyContainerColor() async {

    int rowNumber = Random().nextInt(3);
    int columnNumber = Random().nextInt(3);

    position_x[0] = rowNumber;
    position_y[0] = columnNumber;

    await Future.delayed(const Duration(seconds: 1));

    switch (rowNumber){
      case 0: {
        switch (columnNumber) {
          case 0: {
            color_container0 = Colors.yellow;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 1: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.yellow;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 2: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.yellow;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
        }
      }
      break;
      case 1:
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.yellow;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.yellow;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.yellow;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
          }
        }
        break;
      case 2:{
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.yellow;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.yellow;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.yellow;
              }
              break;
          }
        }
        break;
      }
    }
    setState((){});
    await Future.delayed(const Duration(seconds: 1));
    color_container0 = Colors.deepPurpleAccent;
    color_container1 = Colors.deepPurpleAccent;
    color_container2 = Colors.deepPurpleAccent;
    color_container3 = Colors.deepPurpleAccent;
    color_container4 = Colors.deepPurpleAccent;
    color_container5 = Colors.deepPurpleAccent;
    color_container6 = Colors.deepPurpleAccent;
    color_container7 = Colors.deepPurpleAccent;
    color_container8 = Colors.deepPurpleAccent;
    setState((){});

    rowNumber = Random().nextInt(3);
    columnNumber = Random().nextInt(3);

    position_x[1] = rowNumber;
    position_y[1] = columnNumber;

    await Future.delayed(const Duration(seconds: 1));

    switch (rowNumber){
      case 0: {
        switch (columnNumber) {
          case 0: {
            color_container0 = Colors.yellow;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 1: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.yellow;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 2: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.yellow;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
        }
      }
      break;
      case 1:
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.yellow;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.yellow;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.yellow;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
          }
        }
        break;
      case 2:{
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.yellow;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.yellow;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.yellow;
              }
              break;
          }
        }
        break;
      }
    }
    setState((){});

    await Future.delayed(const Duration(seconds: 1));
    color_container0 = Colors.deepPurpleAccent;
    color_container1 = Colors.deepPurpleAccent;
    color_container2 = Colors.deepPurpleAccent;
    color_container3 = Colors.deepPurpleAccent;
    color_container4 = Colors.deepPurpleAccent;
    color_container5 = Colors.deepPurpleAccent;
    color_container6 = Colors.deepPurpleAccent;
    color_container7 = Colors.deepPurpleAccent;
    color_container8 = Colors.deepPurpleAccent;
    setState((){});

    rowNumber = Random().nextInt(3);
    columnNumber = Random().nextInt(3);

    position_x[2] = rowNumber;
    position_y[2] = columnNumber;

    await Future.delayed(const Duration(seconds: 1));

    switch (rowNumber){
      case 0: {
        switch (columnNumber) {
          case 0: {
            color_container0 = Colors.yellow;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 1: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.yellow;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 2: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.yellow;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
        }
      }
      break;
      case 1:
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.yellow;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.yellow;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.yellow;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
          }
        }
        break;
      case 2:{
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.yellow;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.yellow;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.yellow;
              }
              break;
          }
        }
        break;
      }
    }
    setState((){});

    await Future.delayed(const Duration(seconds: 1));

    color_container0 = Colors.deepPurpleAccent;
    color_container1 = Colors.deepPurpleAccent;
    color_container2 = Colors.deepPurpleAccent;
    color_container3 = Colors.deepPurpleAccent;
    color_container4 = Colors.deepPurpleAccent;
    color_container5 = Colors.deepPurpleAccent;
    color_container6 = Colors.deepPurpleAccent;
    color_container7 = Colors.deepPurpleAccent;
    color_container8 = Colors.deepPurpleAccent;

    setState((){});

    rowNumber = Random().nextInt(3);
    columnNumber = Random().nextInt(3);

    position_x[3] = rowNumber;
    position_y[3] = columnNumber;

    await Future.delayed(const Duration(seconds: 1));

    switch (rowNumber){
      case 0: {
        switch (columnNumber) {
          case 0: {
            color_container0 = Colors.yellow;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 1: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.yellow;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 2: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.yellow;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
        }
      }
      break;
      case 1:
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.yellow;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.yellow;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.yellow;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
          }
        }
        break;
      case 2:{
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.yellow;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.yellow;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.yellow;
              }
              break;
          }
        }
        break;
      }
    }
    setState((){});

    await Future.delayed(const Duration(seconds: 1));

    color_container0 = Colors.deepPurpleAccent;
    color_container1 = Colors.deepPurpleAccent;
    color_container2 = Colors.deepPurpleAccent;
    color_container3 = Colors.deepPurpleAccent;
    color_container4 = Colors.deepPurpleAccent;
    color_container5 = Colors.deepPurpleAccent;
    color_container6 = Colors.deepPurpleAccent;
    color_container7 = Colors.deepPurpleAccent;
    color_container8 = Colors.deepPurpleAccent;

    setState((){});

    rowNumber = Random().nextInt(3);
    columnNumber = Random().nextInt(3);

    position_x[4] = rowNumber;
    position_y[4] = columnNumber;

    await Future.delayed(const Duration(seconds: 1));

    switch (rowNumber){
      case 0: {
        switch (columnNumber) {
          case 0: {
            color_container0 = Colors.yellow;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 1: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.yellow;
            color_container2 = Colors.deepPurpleAccent;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
          case 2: {
            color_container0 = Colors.deepPurpleAccent;
            color_container1 = Colors.deepPurpleAccent;
            color_container2 = Colors.yellow;
            color_container3 = Colors.deepPurpleAccent;
            color_container4 = Colors.deepPurpleAccent;
            color_container5 = Colors.deepPurpleAccent;
            color_container6 = Colors.deepPurpleAccent;
            color_container7 = Colors.deepPurpleAccent;
            color_container8 = Colors.deepPurpleAccent;
          }
          break;
        }
      }
      break;
      case 1:
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.yellow;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.yellow;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.yellow;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
          }
        }
        break;
      case 2:{
        {
          switch (columnNumber) {
            case 0:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.yellow;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 1:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.yellow;
                color_container8 = Colors.deepPurpleAccent;
              }
              break;
            case 2:
              {
                color_container0 = Colors.deepPurpleAccent;
                color_container1 = Colors.deepPurpleAccent;
                color_container2 = Colors.deepPurpleAccent;
                color_container3 = Colors.deepPurpleAccent;
                color_container4 = Colors.deepPurpleAccent;
                color_container5 = Colors.deepPurpleAccent;
                color_container6 = Colors.deepPurpleAccent;
                color_container7 = Colors.deepPurpleAccent;
                color_container8 = Colors.yellow;
              }
              break;
          }
        }
        break;
      }
    }
    setState((){});

    await Future.delayed(const Duration(seconds: 1));

    color_container0 = Colors.deepPurpleAccent;
    color_container1 = Colors.deepPurpleAccent;
    color_container2 = Colors.deepPurpleAccent;
    color_container3 = Colors.deepPurpleAccent;
    color_container4 = Colors.deepPurpleAccent;
    color_container5 = Colors.deepPurpleAccent;
    color_container6 = Colors.deepPurpleAccent;
    color_container7 = Colors.deepPurpleAccent;
    color_container8 = Colors.deepPurpleAccent;

    setState((){});
    enablePressing = true;
  }

  bool alreadyPressedShow = false;

  updateWinsPatternsEasyNumber() async
  {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    int oldWinsPatternsEasyNumber = (pref.getInt('keyWinsPatternsEasyNumber') ?? 0);
    int winsPatternsEasyNumber = oldWinsPatternsEasyNumber + 1;
    if (winsPatternsEasyNumber >= 5)
    {
      pref.setBool('keyIconPatternsEasy', true);
    }
    else
    {
      pref.setBool('keyIconPatternsEasy', false);
    }
    pref.setInt('keyWinsPatternsEasyNumber', winsPatternsEasyNumber);
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
                Container(height: 30,),
                Text('Game of Patterns',
                    style: GoogleFonts.abel(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 50),)
                ),
                Container(height: 5,),
                Text('Difficulty: Easy',
                    style: GoogleFonts.abel(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 30),)
                ),
                SizedBox(
                    height: 400,
                    child: GridView.count(
                      padding: const EdgeInsets.all(30),
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true)
                              {
                                if (position_x[counter] != 0 || position_y[counter] != 0)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark1();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container0,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility1,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 0 || position_y[counter] != 1)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark2();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container1,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility2,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 0 || position_y[counter] != 2)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark3();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container2,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility3,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 1 || position_y[counter] != 0)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark4();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container3,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility4,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 1 || position_y[counter] != 1)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark5();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container4,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility5,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 1 || position_y[counter] != 2)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark6();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container5,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility6,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 2 || position_y[counter] != 0)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark7();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container6,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility7,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 2 || position_y[counter] != 1)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark8();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container7,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility8,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              if (enablePressing == true) {
                                if (position_x[counter] != 2 || position_y[counter] != 2)
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
                                              Text('You were close! Next time you will get it, trust me. ',textAlign: TextAlign.center,
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
                                  return;
                                }
                                showCheckMark9();
                                incrementCounter();
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: color_container8,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Visibility(
                                  visible: activateVisibility9,
                                  child: const Icon(Icons.check_rounded, size: 50, color: Colors.white,)
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                ElevatedButton(
                  onPressed: () {
                    if (alreadyPressedShow == false)
                      {
                        BackgroundMusic.buttonSound();
                        modifyContainerColor();
                        alreadyPressedShow = true;
                      }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[800],
                      elevation: 10,
                      fixedSize: const Size(200, 50),
                      shape: const StadiumBorder()
                  ),
                  child: Text('Start sequence!',
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
                                      Text('All you have to do here is press the "Start sequence" button and, in short time, '
                                          'the squares will change to gold at a certain time in a specific sequence. Wait for '
                                          'the sequence to end, and when it ends, you need to press the squares in what order '
                                          'they have changed color in the sequence. ',
                                        textAlign: TextAlign.center,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}