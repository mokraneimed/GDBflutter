import 'package:flutter/material.dart';
import 'addweather.dart';

class WeatherAppBar extends AppBar {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      actions: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 15, 115, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Search your forecast archive',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              width: 50,
              child: FittedBox(child: FloatingActionButton(onPressed: () {
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
                                print('object');
                              },
                              child: const Text('Add city'))
                        ],
                      );
                    });
              })),
            )
          ],
        )
      ],
    );
  }
}
