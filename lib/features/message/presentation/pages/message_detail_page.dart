import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/message.dart';
import '../message_bloc/message_bloc.dart';
import '../message_detail_bloc/message_detail_bloc.dart';
import 'message_detail_loaded_page.dart';
import 'message_detail_loading_page.dart';

class MessageDetailPage extends StatefulWidget {
  final int index;
  final int categoryId;
  final String category;
  final List<Message> messages;
  final MessageBloc bloc;

  const MessageDetailPage({
    Key key,
    this.index,
    this.categoryId,
    this.category,
    this.messages,
    this.bloc,
  }) : super(key: key);

  @override
  _MessageDetailPageState createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.category,
          style: Theme.of(context).appBarTheme.textTheme.headline6,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.messages.length,
        itemBuilder: (context, index) {
          return BlocProvider<MessageDetailBloc>(
            create: (_) => getIt<MessageDetailBloc>()
              ..add(
                MessageDetailEvent.fetchMessageDetail(
                  categoryId: widget.categoryId,
                  index: index,
                  link: widget.messages[index].link,
                ),
              ),
            child: BlocConsumer<MessageDetailBloc, MessageDetailState>(
              listener: (context, state) {
                // slider page -> make read
                state.maybeMap(
                  orElse: () {},
                  loaded: (state) {
                    widget.bloc.add(
                      MessageEvent.read(
                        categoryId: widget.categoryId,
                        index: index,
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.map(
                  initial: (_) => MessageDetailLoadingPage(),
                  loading: (_) => MessageDetailLoadingPage(),
                  failed: (state) => FailureWidget(
                    error: state.error,
                    retry: () => context.bloc<MessageDetailBloc>().add(
                          MessageDetailEvent.fetchMessageDetail(
                            categoryId: widget.categoryId,
                            index: index,
                            link: widget.messages[index].link,
                          ),
                        ),
                  ),
                  loaded: (state) => MessageDetailLoadedPage(
                    message: widget.messages[index],
                    detail: state.detail,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
