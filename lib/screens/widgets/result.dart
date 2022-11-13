import 'package:basic_calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: const [
            AutoSizeText(
              '0',
              style: TextStyle(
                color: cDark,
                fontSize: 60,
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
