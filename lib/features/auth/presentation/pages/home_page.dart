import 'package:flutter/material.dart';

import '../../../../lang/localizations.dart';
import '../../../curriculum/presentation/pages/curriculum_page.dart';
import '../../../grade/presentation/pages/grade_page.dart';
import '../../../message/presentation/pages/category_tabs_page.dart';
import '../../../setting/presentation/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  int _currentScreen = 0;
  final List<Widget> _screens = [];
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _screens.add(CategoryTabsPage());
    _screens.add(CurriculumPage());
    _screens.add(GradePage());
    _screens.add(SettingPage());
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentScreen,
        onTap: (int index) {
          setState(() {
            _currentScreen = index;
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppLocalizations.of(context).translate('HOME_TAB_HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: AppLocalizations.of(context).translate('HOME_TAB_SCHEDULE'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: AppLocalizations.of(context).translate('HOME_TAB_GRADE'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context).translate('HOME_TAB_SETTINGS'),
          ),
        ],
      ),
    );
  }
}
