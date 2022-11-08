import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Color _primaryColor = Color(0xFF47B5FF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Calculator App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Basic Calculator App',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: _primaryColor,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      AutoSizeText(
                        '0',
                        style: Theme.of(context).textTheme.displayMedium,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
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
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                'C',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: _primaryColor,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Icon(
                                Icons.backspace,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '/',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
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
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                'x',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '+',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 3,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _primaryColor,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
