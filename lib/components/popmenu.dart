import 'package:flutter/material.dart';

class Popmenu extends StatelessWidget {
  const Popmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          color: Colors.deepPurple[300],
          child: const Text("ahmed"),
        ),
        Container(
          height: 50,
          color: Colors.deepPurple[200],
        ),
        Container(
          height: 50,
          color: Colors.deepPurple[300],
        ),
      ],
    );
  }
}
