import 'package:flutter/material.dart';
import 'WeatherAppBar.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: WeatherApp()));
}

var col1 = const Color.fromRGBO(74, 90, 129, 10);

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);
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
                                const TextField(),
                                const SizedBox(height: 16.0),
                                ElevatedButton(
                                    onPressed: () {
                                      debugPrint('object');
                                    },
                                    child: const Text('Add city'))
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
        body: Padding(padding: EdgeInsets.all(20), child: FirstRoute()));
  }
}

class FirstRoute extends StatelessWidget {
  List<String> list = ['hi', 'you'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(228, 236, 252, 0.85),
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
                        builder: (context) => SecondRoute(name: list[index])),
                  );
                },
                child: Container(
                  height: 90,
                  child: Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow[600],
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'El Eulma',
                                style: TextStyle(
                                  color: Color.fromRGBO(74, 90, 129, 10),
                                  fontSize: 25,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              Text(
                                'Setif',
                                style: TextStyle(
                                  color: Color.fromRGBO(74, 90, 129, 10),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Schyler',
                                ),
                              )
                            ],
                          )),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(136, 0, 0, 0),
                        child: Text(
                          '25°',
                          style: TextStyle(
                            color: const Color.fromRGBO(74, 90, 129, 10),
                            fontSize: 20,
                            fontFamily: 'Schyler',
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(height: 10)
          ]);
        });
  }
}

class SecondRoute extends StatelessWidget {
  String name;
  SecondRoute({required this.name});
  @override
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
            child: Text(name),
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
                      const Text(
                        'El Eulma',
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
