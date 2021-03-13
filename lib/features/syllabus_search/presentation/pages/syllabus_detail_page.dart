import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/syllabus.dart';
import '../syllabus_search_detail_bloc/syllabus_search_detail_bloc.dart';
import 'syllabus_detail_loaded_page.dart';
import 'syllabus_detail_loading_page.dart';

class SyllabusDetailPage extends StatelessWidget {
  final Syllabus syllabus;
  final int index;

  const SyllabusDetailPage({Key key, this.syllabus, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SyllabusSearchDetailBloc>()
        ..add(
          SyllabusSearchDetailEvent.fetchSyllabusSearchDetail(
            index: index,
            page: syllabus.page,
            year: syllabus.year,
          ),
        ),
      child: BlocBuilder<SyllabusSearchDetailBloc, SyllabusSearchDetailState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => SyllabusDetailLoadingPage(),
            loading: (_) => SyllabusDetailLoadingPage(),
            failed: (state) => FailureWidget(
              error: state.error,
              retry: () => context.read<SyllabusSearchDetailBloc>().add(
                    SyllabusSearchDetailEvent.fetchSyllabusSearchDetail(
                      index: index,
                      page: syllabus.page,
                      year: syllabus.year,
                    ),
                  ),
            ),
            loaded: (state) => SyllabusDetailsLoadedPage(bloc: context.read<SyllabusSearchDetailBloc>(), detail: state.detail),
          );
        },
      ),
    );
  }
}
