import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MessageDetailLoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Shimmer.fromColors(
        loop: -1,
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: 15.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(Icons.chevron_right),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: 15.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              height: 20.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: 20.0,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Container(
              width: double.infinity,
              height: 15.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 15.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 15.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 15.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 15.0,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Container(
                    width: double.infinity,
                    height: 15.0,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Divider(color: Colors.black, height: 30.0),
            Container(
              width: double.infinity,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
            ),
            Divider(color: Colors.black, height: 30.0),
            Container(
              width: 100.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
