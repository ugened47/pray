import 'package:flutter/material.dart';
import 'package:pray/src/models/saint.dart';
import 'package:pray/src/pages/saint_details.dart';
import 'package:pray/src/widgets/saints_icons_list.dart';
import 'package:provider/provider.dart';
import 'package:pray/src/notifiers/orthodox_calendar_notifier.dart';

class SaintsList extends StatelessWidget {
  SaintsList({Key key, @required this.saints}) : super(key: key);

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  final List<Saint> saints;

  @override
  Widget build(BuildContext context) {
    final isFetching =
        Provider.of<OrthodoxCalendarNotifier>(context).isFetching;

    if (isFetching) {
      return Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Expanded(
      child: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh:
            Provider.of<OrthodoxCalendarNotifier>(context, listen: false).getSaintsOfTheDay,
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: saints.length,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              color: Colors.amber,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SaintDetails(saint: saints[index]),
                    ),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        saints[index].title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SaintIconsList(
                      saint: saints[index],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
