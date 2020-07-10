import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../../../grade_search/presentation/pages/grade_search_page.dart';
import '../grade_bloc/grade_bloc.dart';
import '../widgets/grade_table_card.dart';
import '../widgets/overview_card.dart';
import '../widgets/proportion_card.dart';
import '../widgets/year_grade_table.dart';

class GradePage extends StatefulWidget {
  @override
  _GradePageState createState() => _GradePageState();
}

class _GradePageState extends State<GradePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => getIt<GradeBloc>()..add(GradeEvent.fetchGrade()),
      child: BlocBuilder<GradeBloc, GradeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalizations.of(context).translate('TITLE_GRADE'),
                style: Theme.of(context).appBarTheme.textTheme.headline6,
              ),
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              children: <Widget>[
                SizedBox(height: 15.0),
                HeroInput(
                  tag: 'grade_sreach',
                  hintText: AppLocalizations.of(context).translate('HINTTEXT_GRADE_SEARCH'),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GradeSearchPage())),
                ),
                SizedBox(height: 15.0),
                Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  child: OverviewCard(),
                ),
                SizedBox(height: 15.0),
                Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  child: ProportionCard(),
                ),
                SizedBox(height: 15.0),
                Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  child: YearGradeCard(),
                ),
                SizedBox(height: 15.0),
                Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  child: GradeTableCard(),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
