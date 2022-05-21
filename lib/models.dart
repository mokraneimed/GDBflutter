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
import 'package:gdbflutter/main.dart';

class WeatherInfo {
  final String mainInfo;
  final String iconInfo;
  WeatherInfo({required this.mainInfo, required this.iconInfo});
  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    final mainInfo = json['main'];
    final iconInfo = json['icon'];
    return WeatherInfo(mainInfo: mainInfo, iconInfo: iconInfo);
  }
}

class TempuratureInfo {
  final double tempInfo;
  final double maxInfo;
  final double minInfo;
  final int humidityInfo;
  TempuratureInfo(
      {required this.tempInfo,
      required this.maxInfo,
      required this.minInfo,
      required this.humidityInfo});
  factory TempuratureInfo.fromJson(Map<String, dynamic> json) {
    final tempInfo = json['temp'];
    final maxInfo = json['temp_max'];
    final minInfo = json['temp_min'];
    final humidityInfo = json['humidity'];
    return TempuratureInfo(
        tempInfo: tempInfo,
        maxInfo: maxInfo,
        minInfo: minInfo,
        humidityInfo: humidityInfo);
  }
}

class WeatherResponse {
  final String cityName;
  final TempuratureInfo tempInfo;
  final WeatherInfo weatInfo;
  WeatherResponse(
      {required this.cityName, required this.tempInfo, required this.weatInfo});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final tempInfojson = json['main'];
    final tempInfo = TempuratureInfo.fromJson(tempInfojson);
    final WeatherInfojson = json['weather'][0];
    final weatInfo = WeatherInfo.fromJson(WeatherInfojson);
    return WeatherResponse(
        cityName: cityName, tempInfo: tempInfo, weatInfo: weatInfo);
  }
}
