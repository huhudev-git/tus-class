import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as path;

import '../../../../core/tus_client/data_source/tus_client.dart';
import '../../../../core/tus_client/pages/message_file_page.dart';
import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';

class FileFilter extends StatefulWidget {
  final int index;
  final int size;
  final String pageId;
  final String filename;

  const FileFilter({
    Key key,
    this.index,
    this.size,
    this.pageId,
    this.filename,
  }) : super(key: key);

  @override
  _FileFilterState createState() => _FileFilterState();
}

class _FileFilterState extends State<FileFilter> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  double _persent = 0;
  bool _isFailed = false;

  Color get _color => _isFailed ? Theme.of(context).errorColor : Theme.of(context).accentColor;

  String get filename => path.basenameWithoutExtension(widget.filename);

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              border: Border.all(
                color: _color,
                width: 0.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: _color,
                  blurRadius: 1.0,
                  spreadRadius: 0.1,
                )
              ],
            ),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Tooltip(
                message: "${widget.size} KB",
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  onTap: _download,
                  child: Stack(
                    children: <Widget>[
                      _content(Colors.black87),
                      ClipPath(
                        clipper: FileCliper(_persent),
                        child: Container(
                          decoration: BoxDecoration(
                            color: _color,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: _content(Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _content(Color color) {
    return Padding(
      padding: EdgeInsets.only(left: 35.0 - (25 * _persent), right: 10.0, top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Text(
                filename,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16.0,
                  color: color,
                ),
              ),
            ),
          ),
          _extension(color),
        ],
      ),
    );
  }

  Widget _extension(Color color) {
    final List exist = [
      '.3ds',
      '.aac',
      '.ai',
      '.avi',
      '.bmp',
      '.cad',
      '.cdr',
      '.css',
      '.dat',
      '.dll',
      '.dmg',
      '.doc',
      '.eps',
      '.fla',
      '.flv',
      '.gif',
      '.html',
      '.indd',
      '.iso',
      '.jpg',
      '.js',
      '.midi',
      '.mov',
      '.mp3',
      '.mpg',
      '.pdf',
      '.php',
      '.png',
      '.ppt',
      '.ps',
      '.psd',
      '.raw',
      '.sql',
      '.svg',
      '.tif',
      '.txt',
      '.wmv',
      '.xls',
      '.xml',
      '.zip',
    ];
    String _extension;
    if (path.extension(widget.filename) == '.xlsx') {
      _extension = '.xls';
    } else if (path.extension(widget.filename) == '.docx') {
      _extension = '.doc';
    } else if (path.extension(widget.filename) == '.pptx') {
      _extension = '.ppt';
    } else {
      _extension = path.extension(widget.filename);
    }

    if (exist.contains(_extension)) {
      return SvgPicture.asset(
        'assets/illustration/files/${_extension.substring(1)}.svg',
        semanticsLabel: 'PDF',
        height: 20.0,
      );
    } else {
      return Text(
        _extension,
        style: TextStyle(
          fontSize: 20.0,
          color: color,
        ),
      );
    }
  }

  void _download() {
    final client = getIt<TUSClient>();
    client
        .download(
      MessageFilePage(
        index: widget.index,
        messagePageId: widget.pageId,
        name: widget.filename,
        callback: (received, total) {
          if (total != -1) {
            setState(() {
              _persent = received / total;
            });
          }
        },
      ),
    )
        .then((path) async {
      OpenFile.open(path);
    }).catchError(
      (e) {
        // show error
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("[${AppLocalizations.of(context).translate('LABEL_FAILED')}] $e"), Icon(Icons.error)],
              ),
              backgroundColor: Color(0xFFd9534f),
            ),
          );

        // change color
        _isFailed = true;

        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            _isFailed = false;
          });
        });
      },
    );
  }
}

class FileCliper extends CustomClipper<Path> {
  final double value;
  final double _radius = 10;
  FileCliper(this.value);

  @override
  Path getClip(Size size) {
    final endRadius = size.width - 20.0;

    final Path path = Path();
    path.moveTo(10.0, size.height / 2);
    path.addOval(Rect.fromCircle(center: Offset(20.0, size.height / 2), radius: _radius + (endRadius - _radius) * value));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(FileCliper oldClipper) {
    return true;
  }
}
