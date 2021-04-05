import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:pray/src/models/saint.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://azbyka.ru/days/api';

class OrthodoxCalendarNotifier with ChangeNotifier {
  List<Saint> saints = [];
  bool isFetching = false;


  OrthodoxCalendarNotifier() {
    getSaintsOfTheDay();
  }

  // Future<Saint> _getSaintById(int id) async {
  //   final response = await http.get('$BASE_URL/saint/$id.json');

  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     return Saint.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to load post');
  //   }
  // }

  List<Saint> parseSaint(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Saint>((json) => Saint.fromJson(json)).toList();
  }

  Future<Null> getSaintsOfTheDay() async {
    isFetching = true;
    notifyListeners();
    final response = await http.get(Uri.parse('$BASE_URL/saints.json'));

    if (response.statusCode == 200) {
      saints = parseSaint(response.body);
      isFetching = false;
      notifyListeners();
    } else {
      throw Exception('Failed to load saints');
    }
  }

  Future<Null> getSaintsForTheDate(DateTime day) async {
    isFetching = true;
    notifyListeners();
    final formatedDate = "${day.year}-${day.month}-${day.day}";
    final response = await http.get(Uri.parse('$BASE_URL/saints/$formatedDate.json'));

    if (response.statusCode == 200) {
      saints = parseSaint(response.body);
      isFetching = false;
      notifyListeners();
    } else {
      throw Exception('Failed to load saints');
    }
  }
}
