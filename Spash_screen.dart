import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/BackGroundMusic.dart';
import 'package:memomaster/Sign_In.dart';
import 'package:memomaster/Wrapper.dart';
import 'package:memomaster/main.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => Splash_screenState();
}

class Splash_screenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    BackgroundMusic.play();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
        navigateRoute: Wrapper(),
        duration: 3000,
        imageSize: 250,
        imageSrc: "assets/logo.png",
        text: "Made my CAP Tech",
        textStyle: GoogleFonts.abel(
          textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue[800]);
  }
}