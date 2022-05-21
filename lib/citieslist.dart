import 'package:flutter/material.dart';
import 'package:gdbflutter/secondrouter.dart';

class City extends StatelessWidget {
  String cityName;
  double temp;
  double max;
  double min;
  String icon;
  City(
      {required this.cityName,
      required this.temp,
      required this.max,
      required this.min,
      required this.icon});
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(228, 236, 252, 0.85),
              onPrimary: const Color.fromRGBO(74, 90, 129, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                      color: const Color.fromRGBO(
                          228, 236, 252, 1.0)))) // Background color
          ,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondRoute(
                        cityName: cityName,
                        temp: temp,
                        max: max,
                        min: min,
                        icon: icon,
                      )),
            );
          },
          child: Container(
              height: 90,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.yellow[600],
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cityName,
                                  style: TextStyle(
                                    color: Color.fromRGBO(74, 90, 129, 10),
                                    fontSize: 20,
                                    fontFamily: 'Schyler',
                                  ),
                                ),
                                Text(
                                  cityName,
                                  style: TextStyle(
                                    color: Color.fromRGBO(74, 90, 129, 10),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Schyler',
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    Container(
                      child: Text(
                        '$temp',
                        style: TextStyle(
                          color: const Color.fromRGBO(74, 90, 129, 10),
                          fontSize: 20,
                          fontFamily: 'Schyler',
                        ),
                      ),
                    )
                  ]))),
      const SizedBox(height: 10)
    ]);
  }
}
