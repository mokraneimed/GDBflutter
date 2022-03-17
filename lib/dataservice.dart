import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:gdbflutter/models.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    //api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}
    final queryParameters = {
      'q': city,
      'appid': 'f04de0b069d1d12dc0e61b114b756612'
    };
    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);
    final response = await http.get(uri);
    debugPrint(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}
