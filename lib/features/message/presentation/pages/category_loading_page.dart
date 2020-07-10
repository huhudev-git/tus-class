import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../widgets/message_list_loading_widget.dart';

class CategoriesLoadingPage extends StatelessWidget {
  const CategoriesLoadingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: List.generate(
              4,
              (index) {
                return Shimmer.fromColors(
                  loop: -1,
                  baseColor: Colors.grey[300],
                  highlightColor: Colors.grey[100],
                  child: Container(
                    margin: EdgeInsets.only(right: 10.0),
                    width: 70.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: MessageListLoadingWidget(),
    );
  }
}
