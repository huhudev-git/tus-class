<div align="center">
    <img src="assets/readme/logo.png" width="300" height="300" alt="logo" />
</div>

# <div align="center">TUS CLASS(Unofficial)</div>
<div align="center">TUS CLASS front-end APP</div>
<div align="center">Made with ❤️ and Flutter</div>
<br />
<div align="center">
    <a href="https://flutter.io">
        <img src="https://img.shields.io/badge/Platform-Flutter-green.svg" alt="Platform" />
    </a>
    <a href="https://dart.dev/">
        <img src="https://img.shields.io/badge/dart-2.7.1-blue.svg" alt="dart" />
    </a>
    <img src="https://img.shields.io/badge/Version-beta 0.0.8+4-orange.svg" alt="Version" />
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="LICENSE" />
</div>
<br />

## Installation

<a href='https://play.google.com/store/apps/details?id=com.huhu.tusclass'><img alt='Get it on Google Play' src='assets/readme/google_play_download.png' height=90px/></a>
<a href='https://apps.apple.com/jp/app/tus-class-%E9%9D%9E%E5%85%AC%E5%BC%8F/id1513692491'><img alt='Get it on Apple Store' src='assets/readme/apple_store_download.png' height=90px/></a>

## Introduction

A front-end APP for [TUS CLASS](https://class.admin.tus.ac.jp/up/faces/login/Com00501A.jsp). This Project is only for Tokyo University of Science students. Powered by [Flutter](https://flutter.dev/), support for both **iOS** and **Android**.

:exclamation: !Important: **Only the Faculty of Engineering is currently tested**. There may be a lot of places without adaptation! We need data to fix, please help us.

![Demo](assets/readme/demo.jpg)

## Features

- Messages
  - PDF files
  - Other files (if your have APP supports)
  - Entry
- Timetable
  - Attendance Rate
- Grades
- Grade Search
- Syllabus
- Syllabus Search
- Auto Login

## Issues

please test if the app works fine. If you meet any bugs or issues, please contact with developer, or file an issue and describe what operation caused the bugs.

Please file any issues, bugs, or feature requests in the [Issues](https://github.com/huhugiter/TUS_CLASS/issues). Thx :kissing_heart:

### Known bugs / issues

- For each subject, the form of the timetable is slightly **different** and needs to be implemented (not finish)
- Because the website is “single-threaded" (you can't back or move forward), be sure to wait for the loading to complete (e.g. timetable will only load once and be cached)

## FAQs

### How this APP work

Fetching data from CLASS using regular expression, and simulate web page submission.

### How to configure schedule

By longpressing the cell in table.

### Can't search

Tap the textfield, the keyboard will popup, then tap finish or search key on keyboard

### How this APP store my password

Using Flutter package: [flutter_secure_storage](https://pub.dartlang.org/packages/flutter_secure_storage)

- Keychain is used for iOS
- AES encryption is used for Android. AES secret key is encrypted with RSA and RSA key is stored in KeyStore

> Note KeyStore was introduced in Android 4.3 (API level 18). The plugin wouldn't work for earlier versions.

## TODO

- [x] I18N
- [ ] Theme
- [ ] version check
- [x] course may have more than one period
- [ ] schedule table cell customize
- [ ] more user-friendly Exception handle

## License

TUS CLASS(Unofficial) is released under the MIT License
