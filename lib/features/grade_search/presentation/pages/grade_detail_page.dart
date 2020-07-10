import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/grade.dart';
import '../grade_search_detail_bloc/grade_search_detail_bloc.dart';
import 'grade_detail_loaded_page.dart';
import 'grade_detail_loading_page.dart';

class GradeDetailPage extends StatelessWidget {
  final Grade grade;
  final int index;

  const GradeDetailPage({Key key, this.grade, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GradeSearchDetailBloc>()
        ..add(
          GradeSearchDetailEvent.fetchGradeSearchDetail(
            index: index,
            year: grade.year,
            code: grade.code,
            page: grade.page,
          ),
        ),
      child: BlocBuilder<GradeSearchDetailBloc, GradeSearchDetailState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => GradeDetailLoadingPage(),
            loading: (_) => GradeDetailLoadingPage(),
            failed: (state) => FailureWidget(
              error: state.error,
              retry: () => context.bloc<GradeSearchDetailBloc>().add(
                    GradeSearchDetailEvent.fetchGradeSearchDetail(
                      index: index,
                      year: grade.year,
                      code: grade.code,
                      page: grade.page,
                    ),
                  ),
            ),
            loaded: (state) => GradeDetailsLoadedPage(detail: state.detail),
          );
        },
      ),
    );
  }
}
