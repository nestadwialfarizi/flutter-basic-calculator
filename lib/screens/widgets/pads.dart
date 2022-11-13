import 'package:basic_calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pads extends StatelessWidget {
  Pads({super.key});

  final ButtonStyle _numberElevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 4,
    backgroundColor: Colors.white,
    foregroundColor: cDark,
    textStyle: GoogleFonts.plusJakartaSans(
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  final ButtonStyle _equalToElevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 4,
    backgroundColor: cPrimary,
    foregroundColor: Colors.white,
    textStyle: GoogleFonts.plusJakartaSans(
      textStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  final ButtonStyle _clearElevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 4,
    backgroundColor: cDark,
    foregroundColor: Colors.white,
    textStyle: GoogleFonts.plusJakartaSans(
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  final ButtonStyle _operatorElevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 4,
    backgroundColor: cDark,
    foregroundColor: Colors.white,
    textStyle: GoogleFonts.plusJakartaSans(
      textStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _clearElevatedButtonStyle,
                      child: const Text('AC'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _clearElevatedButtonStyle,
                      child: const Icon(
                        Icons.backspace,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _operatorElevatedButtonStyle,
                      child: const Text('/'),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('7'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('8'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('9'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _operatorElevatedButtonStyle,
                      child: const Text('x'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('4'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('5'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('6'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _operatorElevatedButtonStyle,
                      child: const Text('-'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('1'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('2'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('3'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _operatorElevatedButtonStyle,
                      child: const Text('+'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Icon(
                        Icons.replay,
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Text('0'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _numberElevatedButtonStyle,
                      child: const Icon(
                        Icons.circle,
                        size: 8,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: _equalToElevatedButtonStyle,
                      child: const Text('='),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
