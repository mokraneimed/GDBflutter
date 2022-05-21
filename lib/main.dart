import 'package:gdbflutter/dataservice.dart';
import 'package:flutter/material.dart';
import 'package:gdbflutter/secondrouter.dart';
import 'models.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gdbflutter/dataservice.dart';
import 'package:gdbflutter/models.dart';
import 'package:gdbflutter/secondrouter.dart';
import 'package:gdbflutter/citieslist.dart';
import 'package:gdbflutter/shared_prefrence_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState(); //jddijdisjsji
}

class _HomeState extends State<Home> {
  final data_service = DataService();

  final textController = TextEditingController();

  late WeatherResponse? _response = null;

  List<String> list = [];
  List<double> list_temp = [];
  List<double> list_max = [];
  List<double> list_min = [];
  List<double> list_humidity = [];
  List<String> list_main = [];
  List<String> list_icon = [];

  String NullMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(236, 244, 252, 1.0),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromRGBO(236, 244, 252, 1.0),
          toolbarHeight: 100,
          actions: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(17, 15, 115, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromRGBO(74, 90, 129, 10),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schyler',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Search your forecast archive',
                        style: TextStyle(
                          color: Color.fromRGBO(74, 90, 129, 10),
                          fontFamily: 'Schyler',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  child: FittedBox(
                      child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(236, 244, 252, 1),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SimpleDialog(
                              contentPadding: const EdgeInsets.all(16.0),
                              children: [
                                TextField(
                                  controller: textController,
                                ),
                                const SizedBox(height: 16.0),
                                ElevatedButton(
                                    onPressed: () {
                                      if (textController.text == null) {
                                        NullMessage = 'enter a city!';
                                      } else {
                                        getData();
                                      }
                                    },
                                    child: const Text('Add city')),
                                Text(NullMessage),
                              ],
                            );
                          });
                    },
                    child: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(74, 90, 129, 10),
                    ),
                  )),
                )
              ],
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final item = list[index];
                  return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        setState(() {
                          list.removeAt(index);
                          list_temp.removeAt(index);
                          list_max.removeAt(index);
                          list_min.removeAt(index);
                          list_icon.removeAt(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('$item dismissed')));
                      },
                      background: Container(
                        color: Color.fromRGBO(74, 90, 129, 10),
                      ),
                      child: City(
                        cityName: list[index],
                        temp: list_temp[index],
                        max: list_max[index],
                        min: list_min[index],
                        icon: list_icon[index],
                      ));
                })));
  }

  void getData() async {
    final response = await data_service.getWeather(textController.text);
    setState(() {
      _response = response;
      list.add(_response!.cityName);
      list_temp.add(_response!.tempInfo.tempInfo);
      list_max.add(_response!.tempInfo.maxInfo);
      list_min.add(_response!.tempInfo.minInfo);
      list_icon.add(_response!.weatInfo.iconInfo);
    });
  }
}
