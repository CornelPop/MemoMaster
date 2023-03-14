import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memomaster/BackGroundMusic.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings_Page extends StatefulWidget {
  const Settings_Page({Key? key}) : super(key: key);

  @override
  State<Settings_Page> createState() => Settings_PageState();
}

class Settings_PageState extends State<Settings_Page> {

  static late bool isSound;
  static late bool isMusic;

  static late double soundVolume;
  static late double musicVolume;

  static double get getMusicVolume => musicVolume;
  static double get getSoundVolume => soundVolume;

  @override
  void initState() {
    super.initState();
    initializeSettings();
    BackgroundMusic.play();
  }
/*
  @override
  void dispose() {
    BackgroundMusic.stop();
    super.dispose();
  }
*/
  Future<void> initializeSettings() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final double? soundVol = pref.getDouble('keySoundVolume');
    final double? musicVol = pref.getDouble('keyMusicVolume');
    final bool? isS = pref.getBool('keyIsSound');
    final bool? isM = pref.getBool('keyIsMusic');
    setState(() {
      soundVolume = soundVol ?? 100.0;
      musicVolume = musicVol ?? 100.0;
      isMusic = isM ?? true;
      isSound = isS ?? true;
    });
  }

  updateSettings() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setDouble('keySoundVolume', soundVolume);
    pref.setDouble('keyMusicVolume', musicVolume);
    pref.setBool('keyIsMusic', isMusic);
    pref.setBool('keyIsSound', isSound);
  }

  @override
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
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Settings',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 50),)
                        ),
                      ],
                    ),
                    Container(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sound Effects',
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 35),)
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          isSound ? Icons.volume_up_rounded : Icons.volume_off_rounded,
                          color: Colors.white,
                          size: 40.0,
                          semanticLabel: 'Volume of the sound effects.',
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 10.0,
                            trackShape: const RoundedRectSliderTrackShape(),
                            activeTrackColor: Colors.purple.shade800,
                            inactiveTrackColor: Colors.purple.shade100,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                              pressedElevation: 8.0,
                            ),
                            thumbColor: Colors.blue[800],
                            overlayColor: Colors.pink.withOpacity(0.2),
                            tickMarkShape: const RoundSliderTickMarkShape(),
                            activeTickMarkColor: Colors.purpleAccent,
                            inactiveTickMarkColor: Colors.white,
                            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                            valueIndicatorColor: Colors.blue[800],
                            valueIndicatorTextStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          child: Expanded(
                            child: Slider(
                              min: 0.0,
                              max: 100.0,
                              value: soundVolume,
                              divisions: 4,
                              label: '${soundVolume.round()}',
                              onChanged: (value) {
                                setState(() {
                                  soundVolume = value;
                                  if (value == 0)
                                  {
                                    isSound = false;
                                  }
                                  else
                                  {
                                    isSound = true;
                                  }
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(height: 10,),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 1,
                    ),
                    Container(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Music',
                            style: GoogleFonts.abel(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 35),)
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          isMusic ? Icons.music_note_rounded : Icons.music_off_rounded,
                          color: Colors.white,
                          size: 40.0,
                          semanticLabel: 'Volume of the music.',
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 10.0,
                            trackShape: const RoundedRectSliderTrackShape(),
                            activeTrackColor: Colors.purple.shade800,
                            inactiveTrackColor: Colors.purple.shade100,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                              pressedElevation: 8.0,
                            ),
                            thumbColor: Colors.blue[800],
                            overlayColor: Colors.pink.withOpacity(0.2),
                            tickMarkShape: const RoundSliderTickMarkShape(),
                            activeTickMarkColor: Colors.purpleAccent,
                            inactiveTickMarkColor: Colors.white,
                            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                            valueIndicatorColor: Colors.blue[800],
                            valueIndicatorTextStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          child: Expanded(
                            child: Slider(
                              min: 0.0,
                              max: 100.0,
                              value: musicVolume,
                              divisions: 4,
                              label: '${musicVolume.round()}',
                              onChanged: (value) {
                                setState(() {
                                  musicVolume = value;
                                  if (value == 0)
                                  {
                                    isMusic = false;
                                  }
                                  else
                                  {
                                    isMusic = true;
                                  }
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            iconSize: 50,
                            splashColor: Colors.deepPurpleAccent,
                            hoverColor: Colors.blue,
                            color: Colors.white,
                            onPressed: () {
                              BackgroundMusic.buttonSound();
                              BackgroundMusic.previous();
                            },
                            icon: const Icon(
                              Icons.skip_previous_rounded,)
                        ),
                        IconButton(
                            iconSize: 50,
                            splashColor: Colors.deepPurpleAccent,
                            hoverColor: Colors.blue,
                            color: Colors.white,
                            onPressed: () {
                              BackgroundMusic.buttonSound();
                              BackgroundMusic.next();
                            },
                            icon: const Icon(
                              Icons.skip_next_rounded,)
                        ),
                      ],
                    ),
                    Container(height: 10,),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 1,
                    ),
                    Container(height: 70,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed:() async {
                            BackgroundMusic.buttonSound();
                            updateSettings();
                            BackgroundMusic.play();
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue[800],
                              elevation: 10,
                              fixedSize: const Size(200, 50),
                              shape: const StadiumBorder()
                          ),
                          child: Text('Save',
                              style: GoogleFonts.abel(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22),)
                          ),
                        ),
                      ],
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
                                          Text('This is the "Settings page". For now, you can '
                                              'set the music volume and in game sound effects by '
                                              'moving the slider left and right.',textAlign: TextAlign.center,
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
        )
      )
    );
  }
}