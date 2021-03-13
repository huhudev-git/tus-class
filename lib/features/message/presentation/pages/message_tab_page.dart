import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/message.dart';
import '../message_bloc/message_bloc.dart';
import '../widgets/message_list_loading_widget.dart';
import '../widgets/message_list_tile.dart';

class MessageTabPage extends StatefulWidget {
  final List<Message> messages;
  final int categoryId;
  final String category;
  final bool isLastPage;

  const MessageTabPage({Key key, this.messages, this.categoryId, this.category, this.isLastPage}) : super(key: key);

  @override
  _MessageTabPageState createState() => _MessageTabPageState();
}

class _MessageTabPageState extends State<MessageTabPage> with AutomaticKeepAliveClientMixin<MessageTabPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<MessageBloc>(
      create: (context) => getIt<MessageBloc>()
        ..add(
          MessageEvent.init(
            categoryId: widget.categoryId,
            category: widget.category,
            messages: widget.messages,
            isLastPage: widget.isLastPage,
          ),
        ),
      child: BlocBuilder<MessageBloc, MessageState>(
        builder: (BuildContext context, MessageState state) {
          return state.map(
            initial: (_) => MessageListLoadingWidget(),
            failed: (state) => FailureWidget(
              scale: 0.8,
              error: state.error,
              retry: () => context.read<MessageBloc>().add(
                    MessageEvent.init(
                      categoryId: widget.categoryId,
                      category: widget.category,
                      messages: widget.messages,
                      isLastPage: widget.isLastPage,
                    ),
                  ),
            ),
            loaded: (state) => NotificationListener<ScrollNotification>(
              onNotification: (notification) => _handleScrollNotification(notification, state, BlocProvider.of<MessageBloc>(context)),
              child: Scrollbar(
                child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  controller: _scrollController,
                  itemCount: state.messages.length + 1,
                  separatorBuilder: (context, index) => Divider(height: 0.0),
                  itemBuilder: (context, index) {
                    if (index >= state.messages.length) {
                      return LoaderListItem(
                        isLastPage: state.isLastPage,
                        isLoading: state.isLoading,
                      );
                    } else {
                      return MessageListTile(
                        key: Key("message_${state.categoryId}_$index"),
                        index: index,
                        category: state.category,
                        categoryId: state.categoryId,
                        messages: state.messages,
                      );
                    }
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification, Loaded state, MessageBloc bloc) {
    // not enough items | android | iOS doesn't overscroll,
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0 && notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      if (state.isLastPage || state.isLoading) {
        return false;
      }

      bloc.add(
        MessageEvent.fetchPage(
          categoryId: state.categoryId,
          page: state.page,
        ),
      );
    }
    return false;
  }

  @override
  bool get wantKeepAlive => true;
}
