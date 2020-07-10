import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../domain/entities/teacher.dart';

class TeacherLoadedPage extends StatelessWidget {
  final Teacher teacher;

  const TeacherLoadedPage({Key key, this.teacher}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      height: 440,
      width: 440 * 0.618,
      child: NeumorphicTheme(
        theme: NeumorphicTheme.currentTheme(context).copyWith(depth: 1.5),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                teacher.name,
                style: TextStyle(
                  fontSize: 30.0,
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(height: 30.0),
            ListTile(
              leading: Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
                ),
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  child: Icon(
                    Icons.perm_contact_calendar,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  teacher.position.isNotEmpty ? teacher.position : '—',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
                ),
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  child: Icon(
                    Icons.location_city,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  teacher.location.isNotEmpty ? teacher.location : '—',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
                ),
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  child: Icon(
                    Icons.access_time,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  teacher.workTime.isNotEmpty ? teacher.workTime : '—',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
                ),
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  child: Icon(
                    Icons.public,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              title: teacher.url.isNotEmpty
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: LinkTextSpan(
                          text: teacher.url.replaceAll(RegExp('^https?://'), ''),
                          url: teacher.url,
                        ),
                      ),
                    )
                  : Text(
                      '—',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
            ),
            ListTile(
              leading: Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
                ),
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  child: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              title: teacher.email.isNotEmpty
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: LinkTextSpan(
                          text: teacher.email,
                          url: Uri.encodeFull('mailto:${teacher.email}?subject=To ${teacher.name}&body=...'),
                        ),
                      ),
                    )
                  : Text(
                      '—',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
