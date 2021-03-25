# Setup and Installation prerequisites for Flutter Development

## [Setup for Mac](https://flutter.dev/docs/get-started/install/macos)

1. [Install the Flutter SDK](https://flutter.dev/docs/get-started/install/macos)
2. [Install Android Studio](https://developer.android.com/studio)
3. Install the Android Emulator
4. [Install Xcode](https://apps.apple.com/id/app/xcode/id497799835?mt=12) and command-line tools
5. Test the iOS Simulator

[Fix "unable to locate adb"](https://stackoverflow.com/questions/39036796/unable-to-locate-adb-using-android-studio)

[Fix Simulator not detected](https://stackoverflow.com/questions/50318475/flutter-not-connecting-to-ios-simulator-in-android-studio/63597354)

[Setup PATH for Catalina](https://stackoverflow.com/questions/17901692/set-up-adb-on-mac-os-x)

Run in terminal:

~~~
vim ~/.zshrc
~~~

Add this line:

~~~
export PATH="$PATH:$HOME/Developer/flutter/bin"
export ANDROID_HOME="$PATH:$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
~~~
   
## [Setup for PC](https://flutter.dev/docs/get-started/install/windows)

1. [Install the Flutter SDK](https://flutter.dev/docs/get-started/install/windows)
2. [Install Android Studio](https://developer.android.com/studio)
3. Install the Android Emulator

## [Setup for Linux](https://flutter.dev/docs/get-started/install/linux)

[Dart Documentation](https://dart.dev/guides)