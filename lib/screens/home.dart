// ignore_for_file: avoid_unnecessary_containers

import 'package:basic_calculator_app/screens/widgets/pads.dart';
import 'package:flutter/material.dart';
import 'package:basic_calculator_app/screens/widgets/result.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Result(),
            Pads(),
          ],
        ),
      ),
    );
  }
}
