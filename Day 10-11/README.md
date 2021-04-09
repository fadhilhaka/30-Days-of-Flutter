# Xylophone App

## Flutter and Dart Packages

Add package to pubspec.yaml file:

~~~
dependencies:
  english_words: ^4.0.0
~~~

[Flutter package](https://pub.dev/flutter/packages)

## Play Sound Across Platforms

Playing local asset with [audio cache](https://github.com/luanpotter/audioplayers/blob/master/doc/audio_cache.md) from audioplayers package.

To play an audio, just run:

~~~
// import in the begining of the file
import 'package:audioplayers/audio_cache.dart';

// add it to your class as a static member
static AudioCache player = AudioCache();
// or as a local variable
final player = AudioCache();

// call this method when desired
player.play('explosion.mp3');
~~~

This will play the explosion.mp3 file in your project's assets folder.

The file structure would be something like this:

~~~
.
└── assets
    └── explosion.mp3
~~~

Don't forget to add these files to your pubspec.yaml file:

~~~
flutter:
  assets:
   - assets/explosion.mp3
~~~

You can optionally pass a prefix to the constructor if all of your audios are in a specific folder inside the assets folder. Flame, for instance, uses the 'assets/audio/' prefix:

~~~
AudioCache player = AudioCache(prefix: 'assets/audio/');
player.play('explosion.mp3');
// now this file will be loaded from assets/audio/explosion.mp3
~~~

[Audioplayers package](https://pub.dev/packages/audioplayers)

## Play Multiple Sounds

[Flutter for loop to generate list of widgets](https://stackoverflow.com/questions/56947046/flutter-for-loop-to-generate-list-of-widgets)