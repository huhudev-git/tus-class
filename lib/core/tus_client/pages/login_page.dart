import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';
import 'resolver/login_page_resolver.dart';

class LoginPage extends Equatable with LoginPageResolver implements DirectPage {
  final String username;
  final String password;

  LoginPage({
    this.username,
    this.password,
  });

  @override
  String toString() => 'LoginPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/login/Com00505A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'form1:htmlUserId': username,
        'form1:htmlPassword': password,
        'form1:login.x': Random().nextInt(80).toString(),
        'form1:login.y': Random().nextInt(20).toString(),
        'form1:htmlNextFuncId': '',
        'form1': 'form1',
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => null;

  @override
  List<Object> get props => [];
}
