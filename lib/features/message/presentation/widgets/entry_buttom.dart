import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../message_entry_bloc/message_entry_bloc.dart';

class EntryButtom extends StatefulWidget {
  final String pageId;
  final bool isEntry;
  final VoidCallback onPressed;

  const EntryButtom({Key key, this.isEntry, this.onPressed, this.pageId}) : super(key: key);

  @override
  _EntryButtomState createState() => _EntryButtomState();
}

class _EntryButtomState extends State<EntryButtom> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MessageEntryBloc>(
      create: (_) => getIt<MessageEntryBloc>()..add(MessageEntryEvent.init(isEntry: widget.isEntry)),
      child: BlocListener<MessageEntryBloc, MessageEntryState>(
        listener: (context, state) {
          state.maybeMap(
            success: (state) => ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (state.isEntry) Text(AppLocalizations.of(context).translate('MESSAGE_ENTRY_SWITCH_SUCCESS_MESSAGE')) else Text(AppLocalizations.of(context).translate('MESSAGE_CANCEL_ENTRY_SWITCH_SUCCESS_MESSAGE')),
                      Icon(Icons.check),
                    ],
                  ),
                  backgroundColor: Color(0xFF5cb85c),
                ),
              ),
            failed: (state) => ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).errorColor,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(state.error.getMessage(context)),
                      Icon(Icons.error),
                    ],
                  ),
                ),
              ),
            orElse: () {},
          );
        },
        child: BlocBuilder<MessageEntryBloc, MessageEntryState>(
          buildWhen: (previous, current) {
            return current.maybeMap(
              failed: (_) => false,
              orElse: () => true,
            );
          },
          builder: (BuildContext context, MessageEntryState state) {
            return state.map(
              initial: (_) => _EntryButtom(
                onClick: () => BlocProvider.of<MessageEntryBloc>(context).add(
                  MessageEntryEvent.entrySwitch(
                    isEntry: widget.isEntry,
                    pageId: widget.pageId,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.isEntry ? AppLocalizations.of(context).translate('LABEL_CANCEL_ENTRY') : AppLocalizations.of(context).translate('LABEL_ENTRY'),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              loading: (_) => _EntryButtom(
                onClick: () {},
                child: Center(
                  child: SizedBox(
                    height: 20.0,
                    width: 20.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 3.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
              loaded: (state) => _EntryButtom(
                onClick: () => BlocProvider.of<MessageEntryBloc>(context).add(
                  MessageEntryEvent.entrySwitch(
                    isEntry: state.isEntry,
                    pageId: widget.pageId,
                  ),
                ),
                child: Center(
                  child: Text(
                    state.isEntry ? AppLocalizations.of(context).translate('LABEL_CANCEL_ENTRY') : AppLocalizations.of(context).translate('LABEL_ENTRY'),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              failed: (state) => Container(),
              success: (state) => _EntryButtom(
                onClick: () => BlocProvider.of<MessageEntryBloc>(context).add(
                  MessageEntryEvent.entrySwitch(
                    isEntry: state.isEntry,
                    pageId: widget.pageId,
                  ),
                ),
                child: Center(
                  child: Text(
                    state.isEntry ? AppLocalizations.of(context).translate('LABEL_CANCEL_ENTRY') : AppLocalizations.of(context).translate('LABEL_ENTRY'),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _EntryButtom extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;

  const _EntryButtom({Key key, this.onClick, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: NeumorphicButton(
        onPressed: onClick,
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 8.0,
        ),
        child: child,
      ),
    );
  }
}
