import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  String cityName;
  double temp;
  double max;
  double min;
  String icon;
  SecondRoute(
      {required this.cityName,
      required this.temp,
      required this.max,
      required this.min,
      required this.icon});
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(236, 244, 252, 1.0),
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: const Color.fromRGBO(236, 244, 252, 1.0),
            toolbarHeight: 100,
            actions: [
              Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 115, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Weather',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(74, 90, 129, 10),
                          fontFamily: 'Schyler',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Dangerous travel consitions ',
                        style: TextStyle(
                          color: Color.fromRGBO(74, 90, 129, 10),
                          fontFamily: 'Schyler',
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
        body: Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('hello'),
          ),
          Container(
            height: 200,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/sunny.jpg"), fit: BoxFit.cover),
            ),
            child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        cityName,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Schyler',
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '25°',
                        style: TextStyle(
                            fontSize: 100,
                            fontFamily: 'Schyler',
                            color: Colors.black),
                      ),
                      Text(
                        'snow',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Schyler',
                            color: Colors.black),
                      )
                    ],
                  ),
                )),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'data',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Schyler',
                          ),
                        ),
                        Text(
                          'min temp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'data',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Schyler',
                          ),
                        ),
                        Text(
                          'max temp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'data',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Schyler',
                          ),
                        ),
                        Text(
                          'humidity',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'data',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Schyler',
                          ),
                        ),
                        Text(
                          'min temp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'data',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Schyler',
                          ),
                        ),
                        Text(
                          'max temp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'data',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Schyler',
                          ),
                        ),
                        Text(
                          'humidity',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(74, 90, 129, 10),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
