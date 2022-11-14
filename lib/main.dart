import 'package:auto_size_text/auto_size_text.dart';
import 'package:basic_calculator_app/constants/button_style.dart';
import 'package:basic_calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String title = 'Basic Calculator App';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: const CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int? valueA;
  int? valueB;

  String? operator;

  var stringBufferValue = StringBuffer();

  @override
  void initState() {
    super.initState();
    stringBufferValue.write('0');
    operator = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cLight,
      appBar: AppBar(
        backgroundColor: cLight,
        elevation: 0,
      ),
      body: Column(
        children: [
          _buildResult(),
          _buildPads(),
        ],
      ),
    );
  }

  Expanded _buildResult() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            AutoSizeText(
              stringBufferValue.toString(),
              style: const TextStyle(
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

  Expanded _buildPads() {
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
                      onPressed: () {
                        allClear();
                      },
                      style: allClearElevatedButtonStyle,
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
                      onPressed: () {
                        deleteValue();
                      },
                      style: backspaceElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('/');
                      },
                      style: operatorElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('7');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('8');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('9');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('x');
                      },
                      style: operatorElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('4');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('5');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('6');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('-');
                      },
                      style: operatorElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('1');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('2');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('3');
                      },
                      style: numberElevatedButtonStyle,
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
                      onPressed: () {
                        appendValue('+');
                      },
                      style: operatorElevatedButtonStyle,
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
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        appendValue('0');
                      },
                      style: numberElevatedButtonStyle,
                      child: const Text('0'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        appendValue('=');
                      },
                      style: equalToElevatedButtonStyle,
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

  void appendValue(String str) => setState(() {
        bool isDoCalculate = false;
        String stringValue = stringBufferValue.toString();
        String lastCharacter = stringValue.substring(stringValue.length - 1);
        if (str == '0' &&
            (lastCharacter == '/' ||
                lastCharacter == 'x' ||
                lastCharacter == '-' ||
                lastCharacter == '+')) {
          return;
        } else if (str == '0' && stringBufferValue.toString() == '0') {
          return;
        } else if (str == '=') {
          isDoCalculate = true;
        } else if (str == '/' || str == 'x' || str == '-' || str == '+') {
          if (operator!.isEmpty) {
            operator = str;
          } else {
            isDoCalculate = true;
          }
        }

        if (!isDoCalculate) {
          if (stringBufferValue.toString() == '0' && str != '0') {
            stringBufferValue.clear();
          }
          stringBufferValue.write(str);
        } else {
          List<String> values = stringBufferValue.toString().split(operator!);
          if (values.length == 2 &&
              values[0].isNotEmpty &&
              values[1].isNotEmpty) {
            valueA = int.parse(values[0]);
            valueB = int.parse(values[1]);
            stringBufferValue.clear();
            int total = 0;

            switch (operator) {
              case '/':
                total = valueA! ~/ valueB!;
                break;
              case 'x':
                total = valueA! * valueB!;
                break;
              case '-':
                total = valueA! - valueB!;
                break;
              case '+':
                total = valueA! + valueB!;
                break;
            }
            stringBufferValue.write(total);
            if (str == '/' || str == 'x' || str == '-' || str == '+') {
              operator = str;
              stringBufferValue.write(str);
            } else {
              operator = '';
            }
          } else {
            String stringValue = stringBufferValue.toString();
            String lastCharacter =
                stringValue.substring(stringValue.length - 1);
            if (str == '/' || str == 'x' || str == '-' || str == '+') {
              stringBufferValue.clear();
              stringBufferValue.write(
                  '${stringValue.substring(0, stringValue.length - 1)}$str');
              operator = '';
              stringBufferValue.clear();
              stringBufferValue.write(
                  '${stringValue.substring(0, stringValue.length - 1)}$str');
              operator = str;
            } else if (str == '=' &&
                (lastCharacter == '/' ||
                    lastCharacter == 'x' ||
                    lastCharacter == '-' ||
                    lastCharacter == '+')) {
              stringBufferValue.clear();
              stringBufferValue
                  .write(stringValue.substring(0, stringValue.length - 1));
            }
          }
        }
      });

  void deleteValue() => setState(() {
        String stringValue = stringBufferValue.toString();
        if (stringValue.isNotEmpty) {
          String lastCharacter = stringValue.substring(stringValue.length - 1);
          if (lastCharacter == '/' ||
              lastCharacter == 'x' ||
              lastCharacter == '-' ||
              lastCharacter == '+') {
            operator = '';
          }
          stringValue = stringValue.substring(0, stringValue.length - 1);
          stringBufferValue.clear();
          stringBufferValue.write(stringValue.isEmpty ? '0' : stringValue);
        }
      });

  void allClear() => setState(() {
        operator = '';
        stringBufferValue.clear();
        stringBufferValue.write('0');
      });
}
