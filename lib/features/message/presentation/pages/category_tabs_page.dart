import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../category_bloc/category_bloc.dart';
import 'category_loaded_page.dart';
import 'category_loading_page.dart';

class CategoryTabsPage extends StatefulWidget {
  @override
  _CategoryTabsPageState createState() => _CategoryTabsPageState();
}

class _CategoryTabsPageState extends State<CategoryTabsPage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'CLASS',
          style: Theme.of(context).appBarTheme.textTheme.headline6,
        ),
      ),
      body: BlocProvider<CategoryBloc>(
        create: (context) => getIt<CategoryBloc>()..add(CategoryEvent.fetchCategory()),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (BuildContext context, CategoryState state) {
            return state.map(
              initial: (_) => CategoriesLoadingPage(),
              loading: (_) => CategoriesLoadingPage(),
              failed: (state) => FailureWidget(
                error: state.error,
                retry: () => context.read<CategoryBloc>()..add(CategoryEvent.fetchCategory()),
              ),
              loaded: (state) => CategoriesLoadedPage(categories: state.categories),
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
