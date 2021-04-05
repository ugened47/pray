import 'package:flutter/material.dart';
import 'package:pray/src/models/saint.dart';
import 'package:pray/src/widgets/saints_list.dart';
import 'package:provider/provider.dart';
import 'package:pray/src/blocs/favorite_saints_bloc.dart';

class FavoriteSaintsPage extends StatefulWidget {
  FavoriteSaintsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FavoriteSaintsPageState createState() => _FavoriteSaintsPageState();
}

class _FavoriteSaintsPageState extends State<FavoriteSaintsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 48)),
      ),
      body: Center(
          child: Column(
        children: <Widget>[FavoriteSaints()],
      )),
    );
  }
}

class FavoriteSaints extends StatelessWidget {
  const FavoriteSaints({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Provider.of<FavoriteSaintsBloc>(context, listen: false).outFavorites,
      initialData: <Saint>[],
      builder: (context, AsyncSnapshot<List<Saint>> snapshot) {
        if (!snapshot.hasData) return CircularProgressIndicator();

        if (snapshot.hasError) return Text(snapshot.error);

        print(snapshot.data);

        return SaintsList(saints: snapshot.data);
      },
    );
  }
}
