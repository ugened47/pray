import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pray/src/models/saint.dart';
import 'package:pray/src/widgets/saints_icons_list.dart';

class SaintDetails extends StatelessWidget {
  final Saint saint;

  SaintDetails({Key key, @required this.saint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(saint.title, style: TextStyle(fontSize: 48))),
      body: ListView(
        children: <Widget>[
          SaintIconsList(saint: saint),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: HtmlWidget(
              saint.description,
              webView: true,
              textStyle: TextStyle(
                fontSize: 24
                // fontFamily: DefaultTextStyle.of(context).style.fontFamily
              ),
            ),
          ),
        ],
      ),
    );
  }
}
