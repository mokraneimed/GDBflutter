/*
{
  "weather": [
    {
      "main": "Clear",
      "icon": "01d"
    }
  ],
  "main": {
    "temp": 282.55,
    "temp_min": 280.37,
    "temp_max": 284.26,
    "pressure": 1023,
    "humidity": 100
  },
  
  }
*/

import 'package:flutter/material.dart';

class WeatherResponse {
  final String cityName;
  WeatherResponse({required this.cityName});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    return WeatherResponse(cityName: cityName);
  }
}
