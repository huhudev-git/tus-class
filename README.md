<h1 align="center">TUS CLASS(Unofficial)</h1> <br>
<p align="center">
  <img alt="logo" title="logo" src="assets/readme/logo.png" width="200">
</p>

<p align="center">
  TUS CLASS Front-end APP <br>
  Made with ❤️ and Flutter
</p>

<p align="center">
  <a href="https://apps.apple.com/jp/app/tus-class-%E9%9D%9E%E5%85%AC%E5%BC%8F/id1513692491">
    <img alt="Download on the App Store" title="App Store" src="assets/readme/apple_store_download.png" width="140px">
  </a>

  <a href="https://play.google.com/store/apps/details?id=com.huhu.tusclass">
    <img alt="Get it on Google Play" title="Google Play" src="assets/readme/google_play_download.png" width="140px">
  </a>
</p>

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
- [Features](#features)
- [Issues](#issues)
  - [Known bugs / issues](#known-bugs--issues)
- [Contributing](#contributing)
- [FAQs](#faqs)
- [Todo](#todo)
- [License](#license)

## Introduction

[![Platform](https://img.shields.io/badge/Platform-Flutter-green.svg)](https://flutter.io)
![Version](https://img.shields.io/badge/Version-0.1.2+11-orange.svg)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://choosealicense.com/licenses/mit/)

A Front-end APP for [TUS CLASS](https://class.admin.tus.ac.jp/up/faces/login/Com00501A.jsp). This project is only for Tokyo University of Science students. Powered by [Flutter](https://flutter.dev/)

**Available for both iOS and Android.**

<p align="center">
  <img src = "assets/readme/iphone-white.png" width=300>
</p>


## Features

- 📨Messages
  - 📕PDF files
  - 📚Other files (if your have APP supports)
  - 🎈Entry
- 📅Timetable
  - 💯Attendance Rate
- 🏆Grades
- 🔎Grade Search
- 📝Syllabus
- 🔎Syllabus Search
- 🔐Auto Login

![Demo](assets/readme/demo.jpg)

## Issues

> :exclamation: **Important**: Only the Faculty of Engineering is currently tested. There may be a lot of places without adaptation!

If you meet any bugs or issues, please contact with developer, or file an issue and describe what operation caused the bugs.Please file any issues, bugs, or feature requests in the [Issues](https://github.com/huhugiter/TUS_CLASS/issues). Thx :kissing_heart:

### Known bugs / issues

- For each subject, the form of the timetable may slightly **different** and needs to be implemented
- Because the website is “single-threaded" (you can't back or move forward), be sure to wait for the loading to complete (e.g. timetable will only load once and be cached)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## FAQs

- **How this APP work**
  - Fetching data from CLASS using regular expression, and simulate web page submission.
- **How to configure schedule**
  - By longpressing the cell in table.
- **Can't search**
  - Tap the textfield, the keyboard will popup, then tap finish or search key on keyboard
- **How this APP store my password**
  - Using Flutter package: [flutter_secure_storage](https://pub.dartlang.org/packages/flutter_secure_storage)
    - Keychain is used for iOS
    - AES encryption is used for Android. AES secret key is encrypted with RSA and RSA key is stored in KeyStore
  - Note KeyStore was introduced in Android 4.3 (API level 18). The plugin wouldn't work for earlier versions.

## Todo

- [x] I18N
- [x] Course may have more than one period
- [ ] Theme
- [ ] Version check
- [ ] Schedule table cell customize
- [ ] More user-friendly Exception handle

## License

[MIT](https://choosealicense.com/licenses/mit/)
