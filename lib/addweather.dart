import 'package:flutter/material.dart';

class AddWeather extends StatelessWidget {
  const AddWeather({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
  }
}
