# Xylophone App

|                        |
|:----------------------:|
| ![](images/img_1.png)  |

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

~~~
class Note extends StatefulWidget {
  final int number;

  const Note ({ Key key, this.number }): super(key: key);

  @override
  _NoteState createState() => _NoteState();
}
~~~

[Flutter for loop to generate list of widgets](https://stackoverflow.com/questions/56947046/flutter-for-loop-to-generate-list-of-widgets)

[Passing data to statefull widget](https://stackoverflow.com/questions/50818770/passing-data-to-a-stateful-widget)

[Flutter Text color](https://stackoverflow.com/questions/50554036/flutter-text-and-text-color-not-updated-after-hot-reload)

[Strech button in screen](https://api.flutter.dev/flutter/rendering/CrossAxisAlignment-class.html)

## Dart Function

### Parameter

~~~
void playSound(int number) {
  final AudioCache player = AudioCache();
  player.play('note$number.wav');
}
~~~

**Named parameters** are optional unless they’re specifically marked as required.

When calling a function, you can specify named parameters using paramName: value. For example:

~~~
enableFlags(bold: true, hidden: false);
~~~

When defining a function, use {param1, param2, …} to specify named parameters:

~~~
/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool? bold, bool? hidden}) {...}
~~~

>NOTE
>>If a parameter is optional but can’t be null, provide a [default value](https://dart.dev/guides/language/language-tour#default-parameter-values).

### Returning Function

~~~
return_type function_name(){  
   //statements  
   return value;  
}
~~~

[Returning Function](https://www.tutorialspoint.com/dart_programming/dart_programming_returning_function.htm)

### Arrow Function

~~~
void main() {
  runApp(XylophoneApp());
}
~~~

Can also be written:

~~~
void main() => runApp(XylophoneApp());
~~~

Arrow function only allow single line code/expression.

[Free sound](https://freesound.org)

[Dart function documentation](https://dart.dev/guides/language/language-tour#functions)