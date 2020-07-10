import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../domain/entities/category.dart';
import '../widgets/bubble_tab_indicator.dart';
import 'message_tab_page.dart';

class CategoriesLoadedPage extends StatelessWidget {
  final List<Category> categories;

  const CategoriesLoadedPage({Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: categories.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(35.0),
            child: AppBar(
              elevation: 0.0,
              automaticallyImplyLeading: false,
              title: TabBar(
                isScrollable: true,
                indicator: BubbleTabIndicator(
                  indicatorColor: Theme.of(context).accentColor,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
                labelStyle: Theme.of(context).tabBarTheme.labelStyle,
                unselectedLabelStyle: Theme.of(context).tabBarTheme.unselectedLabelStyle,
                tabs: List.generate(
                  categories.length,
                  (categoryId) => Tab(child: Text(categories[categoryId].category)),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: List.generate(
              categories.length,
              (categoryId) => MessageTabPage(
                key: Key('TAB_$categoryId'),
                categoryId: categories[categoryId].index,
                category: categories[categoryId].category,
                messages: categories[categoryId].messages,
                isLastPage: categories[categoryId].isLastPage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
