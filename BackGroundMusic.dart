import 'package:audioplayers/audioplayers.dart';
import 'package:memomaster/Settings.dart';

List<String> songs = ['music1.mp3', 'music2.mp3', 'music3.mp3', 'music4.mp3', 'music5.mp3',
                      'music6.mp3', 'music7.mp3', 'music8.mp3', 'music9.mp3', 'music10.mp3',
                      'music11.mp3', 'music12.mp3', 'music13.mp3', 'music14.mp3', 'music15.mp3'];

class BackgroundMusic {

  static AudioPlayer audioPlayer = AudioPlayer();
  static AudioPlayer audioPlayerSounds = AudioPlayer();
  static bool isPlaying = false;
  static int currentNumberSong = 0;
  static const int SONGSNUMBER = 15;

  static Future<void> buttonSound() async
  {
    await audioPlayerSounds.setVolume((Settings_PageState.getSoundVolume)/100);
    await audioPlayerSounds.play(AssetSource('clickSound.wav'));
  }

  static Future<void> play() async
  {
    await audioPlayer.play(AssetSource(songs[currentNumberSong]));
    await audioPlayer.setVolume((Settings_PageState.getMusicVolume)/100);
    isPlaying = true;

    audioPlayer.onPlayerComplete.listen((state)
    {
        next();
    });
  }

  static Future<void> next() async
  {
    currentNumberSong++;
    if (currentNumberSong == SONGSNUMBER)
    {
      currentNumberSong = 0;
    }
    await audioPlayer.stop();
    await audioPlayer.play(AssetSource(songs[currentNumberSong]));
  }

  static Future<void> previous() async
  {
    currentNumberSong--;
    if (currentNumberSong == -1) {
      currentNumberSong = SONGSNUMBER -1;
    }
    await audioPlayer.stop();
    await audioPlayer.play(AssetSource(songs[currentNumberSong]));
  }

  static Future<void> stop() async
  {
    await audioPlayer.stop();
    isPlaying = false;
  }
}
