<div align="center"><img src="assets/readme/logo.png" width="300" height="300" alt="logo" /></div>

# <div align="center">TUS CLASS(Unofficial)</div>
<div align="center">TUS CLASS front-end APP</div><br>

<div align="center">
    <a href="https://flutter.io">
        <img src="https://img.shields.io/badge/Platform-Flutter-blue.svg" alt="Platform" />
    </a>
    <img src="https://img.shields.io/badge/Version-0.0.6-orange.svg" alt="Version" />
</div><br>

## Contents

  - [Installation](#installation)
  - [Introduction](#introduction)
  - [Features](#features)
  - [Issues](#issues)
  - [TODO](#todo)

## Installation

[0.0.6] Beta: [TestFlight](https://testflight.apple.com/join/km2DnJZf) (**IOS ONLY**)

> Sorry for Android users, though we have already built Android version, since this is a unofficial APP, to avoid complex problems.  
> We will release Android version in the future.

## Introduction

A front-end APP for [TUS CLASS](https://class.admin.tus.ac.jp/up/faces/login/Com00501A.jsp). This Project is only for Tokyo University of Science students.  
Powered by [Flutter](https://flutter.dev/), support for both **iOS** and **Android**.

This is my first mobile application, so it maybe buggy or what else.  
This repo isn't open source now, but will open source in some day(code just not beautiful currently).


<div style="text-align: center"><table><tr>
  <td style="text-align: center">
    <img src="assets/readme/1.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/2.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/3.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/4.png"  width="200" />
  </td>
</tr></table></div>
<div style="text-align: center"><table><tr>
  <td style="text-align: center">
    <img src="assets/readme/5.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/6.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/7.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/8.png"  width="200" />
  </td>
</tr></table></div>
<div style="text-align: center"><table><tr>
  <td style="text-align: center">
    <img src="assets/readme/9.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/10.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/11.png"  width="200" />
  </td>
  <td style="text-align: center">
    <img src="assets/readme/12.png"  width="200" />
  </td>
</tr></table></div>

## Features

- Messages
  - PDF files
  - Other files (if your have APP supports)
  - Application
- Schedules
  - Attendance Rate
- Grades
- Grade Search
- Syllabus
- Syllabus Search
- Auto Login

## Issues

Please file any issues, bugs, or feature requests in the [Issues](https://github.com/huhugiter/TUS_CLASS/issues).

### Known bugs / issues

- search will return no result whatever the exception is
- Unread messages will only show index page messages if you not load all message(by cloud download icon)

## FAQs

### How to configure schedule

By longpress the cell in table.

### Icons on top left not working

Current time the icons(on top left) are just decorations.

### Can't search

Tap the textfield, the keyboard will popup, then tap finish or search key on keyboard

### How this APP store my password

Using Flutter package: [flutter_secure_storage](https://pub.dartlang.org/packages/flutter_secure_storage)

- Keychain is used for iOS
- AES encryption is used for Android. AES secret key is encrypted with RSA and RSA key is stored in KeyStore

Note KeyStore was introduced in Android 4.3 (API level 18). The plugin wouldn't work for earlier versions.

## TODO

- [ ] I18N
- [ ] Theme
- [ ] version check
- [ ] course may have more than one period
- [ ] schedule table cell customize
- [ ] more user-friendly Exception handle
