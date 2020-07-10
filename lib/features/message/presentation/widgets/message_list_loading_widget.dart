import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MessageListLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, i) {
        return Shimmer.fromColors(
          loop: -1,
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          child: ListTile(
            leading: Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            title: Container(
              height: 15.0,
              color: Colors.white,
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Container(
                height: 13.5,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
