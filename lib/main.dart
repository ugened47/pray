import 'package:flutter/material.dart';
import 'package:pray/src/blocs/favorite_saints_bloc.dart';
import 'package:pray/src/notifiers/orthodox_calendar_notifier.dart';
import 'package:pray/src/pages/home.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<OrthodoxCalendarNotifier>(
            builder: (_) => OrthodoxCalendarNotifier()),
        Provider<FavoriteSaintsBloc>(
          builder: (context) => FavoriteSaintsBloc(),
          dispose: (context, bloc) => bloc.dispose(),
        )
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saints of the day',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'CyrillicSinod'
      ),
      home: HomePage(title: 'Saint of the day'),
    );
  }
}
