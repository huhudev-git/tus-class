import 'package:html_unescape/html_unescape.dart';

mixin TeacherResolver {
  Map<String, dynamic> resolverTeacher(String content) {
    final unescape = HtmlUnescape();

    final positionReg = RegExp(r'<span id="form1:htmlSzkGkbGkkSykName" class="outputText">([\S\s]*?)</span>', caseSensitive: false);
    final locationReg = RegExp(r'<span id="form1:htmlLabPlace" class="outputText">([\S\s]*?)</span>', caseSensitive: false);
    final workTimeReg = RegExp(r'<span id="form1:htmlOfficeHour" class="outputText">([\S\s]*?)</span>', caseSensitive: false);
    final urlReg = RegExp(r'<span id="form1:htmlUrlAddress" class="outputText">([\S\s]*?)</span>', caseSensitive: false);
    final emailReg = RegExp(r'<span id="form1:htmlEmailAddress" class="outputText">([\S\s]*?)</span>', caseSensitive: false);
    final nameReg = RegExp(r'<span id="form1:htmlKyoinName" class="outputText">([\S\s]*?)</span>', caseSensitive: false);

    final position = unescape.convert(positionReg.firstMatch(content).group(1));
    //print('position $position');
    final location = unescape.convert(locationReg.firstMatch(content).group(1));
    //print('location $location');
    final workTime = unescape.convert(workTimeReg.firstMatch(content).group(1));
    //print('workTime $workTime');
    final url = unescape.convert(urlReg.firstMatch(content).group(1)).replaceAll(RegExp('<.*?>'), '');
    //print('url $url');
    final email = unescape.convert(emailReg.firstMatch(content).group(1));
    //print('email $email');
    final name = unescape.convert(nameReg.firstMatch(content).group(1));
    //print('name $name');

    return {
      'position': position,
      'location': location,
      'workTime': workTime,
      'url': url,
      'email': email,
      'name': name,
    };
  }
}
