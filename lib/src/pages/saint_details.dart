import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pray/src/models/saint.dart';
import 'package:pray/src/pages/favorite_saints.dart';
import 'package:pray/src/widgets/saints_icons_list.dart';
import 'package:provider/provider.dart';
import 'package:pray/src/blocs/favorite_saints_bloc.dart';

class SaintDetails extends StatelessWidget {
  final Saint saint;

  SaintDetails({Key key, @required this.saint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(saint.title, style: TextStyle(fontSize: 48)),
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FavoriteSaintsPage(title: 'Favorite saints'),
                ),
              );
            },
            splashColor: Colors.blue.withAlpha(30),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SaintIconsList(saint: saint),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: HtmlWidget(
              saint.description,
              webView: true,
              textStyle: TextStyle(fontSize: 24
                  // fontFamily: DefaultTextStyle.of(context).style.fontFamily
                  ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.star),
        onPressed: () {
          Provider.of<FavoriteSaintsBloc>(context, listen: false).addToFavorites.add(saint);
          showToast('Added to favorites', position: ToastPosition.bottom);
        },
      ),
    );
  }
}
