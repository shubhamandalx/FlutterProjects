import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcButton(String btntext, Color btncolor, Color textcolor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360.0)),
          backgroundColor: btncolor),
      child: Text(
        btntext,
        style: TextStyle(
          fontSize: 60,
          color: textcolor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'MyCalculator',
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.grey, Colors.black),
                calcButton('+/-', Colors.grey, Colors.black),
                calcButton('%', Colors.grey, Colors.black),
                calcButton('/', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', Colors.grey.shade800, Colors.black),
                calcButton('8', Colors.grey.shade800, Colors.black),
                calcButton('9', Colors.grey.shade800, Colors.black),
                calcButton('*', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('6', Colors.grey.shade800, Colors.black),
                calcButton('5', Colors.grey.shade800, Colors.black),
                calcButton('4', Colors.grey.shade800, Colors.black),
                calcButton('-', Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('3', Colors.grey.shade800, Colors.black),
                calcButton('2', Colors.grey.shade800, Colors.black),
                calcButton('1', Colors.grey.shade800, Colors.black),
                calcButton('+', Colors.amber.shade700, Colors.white),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child:  Text(
                    '0',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(360.0)),
                      backgroundColor: Colors.grey.shade800),
                ),
                calcButton('.', Colors.grey.shade800, Colors.black),
                calcButton('=', Colors.amber.shade700, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }
}


