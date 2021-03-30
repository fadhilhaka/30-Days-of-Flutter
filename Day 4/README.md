# Running Your App on a Physical Device

## [Deploying Flutter Apps to an Android Phone](https://blog.londonappbrewery.com/troubleshooting-android-device-testing-on-windows-a2b5d779df08)

### Steps

1. Enable developer mode, go to **Settings** -> **About** -> **Build number** -> Tap repeatedly until developer mode is enabled.
2. Enable usb debuggging.
3. Connect phone with usb.
4. Allow usb debugging and tick always trust your computer when prompted.
5. Run app from Android Studio.

## [Deploying Flutter Apps to iPhones/iPads](https://blog.londonappbrewery.com/troubleshooting-ios-device-testing-for-flutter-38c5da239e62)

### Requirements

1. Apple ID
2. iPhone/iPad 
3. Xcode
4. Usb Cable

### Steps

1. Check the iOS version is compatible with the Xcode version.
2. Install [homebrew](https://brew.sh).
3. Use homebrew to install ~~ideviceinstaller, ios-deploy and~~ [cocoapods](https://flutter.dev/docs/get-started/install/macos#deploy-to-ios-devices).
4. Add apple id to Xcode.
5. Select development team.
6. Connect device with usb cable.
7. Trust your computer when prompted.
8. Trust your development certificate.
9. Create a unique bundle id.
10. Run app from Android Studio.