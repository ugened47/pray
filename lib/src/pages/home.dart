import 'package:flutter/material.dart';
import 'package:pray/src/widgets/saints_list.dart';
import 'package:provider/provider.dart';
import 'package:pray/src/notifiers/orthodox_calendar_notifier.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 48)),
      ),
      body: Center(
        child: ListOfSaints(),
      ),
    );
  }
}

class ListOfSaints extends StatefulWidget {
  const ListOfSaints({
    Key key,
  }) : super(key: key);

  @override
  _ListOfSaintsState createState() => _ListOfSaintsState();
}

class _ListOfSaintsState extends State<ListOfSaints> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events) {
    Provider.of<OrthodoxCalendarNotifier>(context).getSaintsForTheDate(day);
  }

  Widget _buildTableCalendar() {
    return TableCalendar(
      calendarController: _calendarController,
      initialCalendarFormat: CalendarFormat.week,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        selectedColor: Colors.deepOrange[400],
        todayColor: Colors.deepOrange[200],
        markersColor: Colors.brown[700],
        outsideDaysVisible: false,
      ),
      headerStyle: HeaderStyle(
        formatButtonTextStyle:
            TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
        formatButtonDecoration: BoxDecoration(
          color: Colors.deepOrange[400],
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onDaySelected: _onDaySelected,
    );
  }

  @override
  Widget build(BuildContext context) {
    final saintsForToday =
        Provider.of<OrthodoxCalendarNotifier>(context).saintsOfTheDay;

    return Column(
      children: <Widget>[
        _buildTableCalendar(),
        SaintsList(saints: saintsForToday)
      ],
    );
  }
}