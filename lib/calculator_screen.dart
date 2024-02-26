import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Theme/Theme_cubit.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // String output = '';
  // String output2 = '';
  // // String result = "0";
  // String outputScreen = '0';
  // String outputNum = '';
  // double num1 =0;
  // double num2 =0;
  // double num3 =0;
  // double num4 =0;
  // String operation ='';
  // double ? show;
  // buttonPress(String buttonText) {
  //   if (buttonText == "C") {
  //     num1 = 0;
  //     num2 = 0;
  //     operation = "";
  //     outputScreen = "";
  //   } else if (buttonText == "+" ||
  //       buttonText == "-" ||
  //       buttonText == "/" ||
  //       buttonText == "x") {
  //     num1 = double.parse(output);
  //     operation = buttonText;
  //     // outputScreen = "$num1 $operation";
  //     outputScreen = "";
  //   }  else if (buttonText == '=') {
  //     num2 = double.parse(output);
  //
  //     if (operation == "+") {
  //       outputScreen = "$num1 $operation $num2 = ${num1 + num2}".toString();
  //
  //       // outputScreen = (num1 + num2).toString();
  //
  //     }
  //     if (operation == "-") {
  //       outputScreen = (num1 - num2).toString();
  //     }
  //     if (operation == "X") {
  //       outputScreen = (num1 * num2).toString();
  //     }
  //     if (operation == "/") {
  //       outputScreen = (num1 / num2).toString();
  //       if (num2 == 0) {
  //         outputScreen = "Division by zero is not defined!";
  //       }
  //     }
  //     num1 = 0;
  //     num2 = 0;
  //     operation = "";
  //   } else {
  //     outputScreen = outputScreen + buttonText;
  //   }
  //
  //   print(outputScreen);
  //   setState(() {
  //     output = outputScreen;
  //   });
  // }
  String equation = ""; //معادله
  String result = "0"; // النتيجه
  String expression = ""; // العمليه
  bool val = false;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "";
        result = "0";
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll('x', '*');
        expression = expression.replaceAll('/', '/');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "/") {
          equation = buttonText;
        }
        equation = equation + buttonText;
      }
    });
  }

  Widget numbersButton(
      {required String text,
        required Color lightColor,
        required Color darkColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: MaterialButton(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: ThemeCubit.get(context).isDark ? darkColor : lightColor,
          onPressed: () {
            buttonPressed(text);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Calculator',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 100,
                  child: LiteRollingSwitch(
                    width: 100,
                    onTap: (bool state) {
                      ThemeCubit.get(context).changeTheme();
                    },
                    onDoubleTap: () {},
                    onSwipe: (bool state) {
                      ThemeCubit.get(context).changeTheme();
                    },
                    value: ThemeCubit.get(context).isDark,
                    onChanged: (bool state) {
                      ThemeCubit.get(context).changeTheme();
                    },
                    textOn: 'Dark',
                    textOff: 'Light',
                    textOnColor: Colors.white,
                    textOffColor: Colors.white,
                    colorOn: const Color(0xFF7C6B5B),
                    colorOff: const Color(0xFFF3DFC7),
                    iconOn: Icons.dark_mode,
                    iconOff: Icons.light_mode,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                      child: Column(
                        children: [
                          Text(equation,
                              style: const TextStyle(
                                fontSize: 38,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: Text(result, style: const TextStyle(fontSize: 48)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                numbersButton(
                    text: 'C',
                    lightColor: const Color(0xFFF7B59F),
                    darkColor: const Color(0xff7C5643)),
                numbersButton(
                    text: '()',
                    lightColor: const Color(0xFFF7B59F),
                    darkColor: const Color(0xff7C5643)),
                numbersButton(
                    text: '%',
                    lightColor: const Color(0xFFF7B59F),
                    darkColor: const Color(0xff7C5643)),
                numbersButton(
                    text: '/',
                    lightColor: const Color(0xFFD3A478),
                    darkColor: const Color(0xFF8A6642)),
              ],
            ),
            Row(
              children: [
                numbersButton(
                    text: '7',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '8',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '9',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: 'x',
                    lightColor: const Color(0xFFD3A478),
                    darkColor: const Color(0xFF8A6642)),
              ],
            ),
            Row(
              children: [
                numbersButton(
                    text: '4',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '5',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '6',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '-',
                    lightColor: const Color(0xFFD3A478),
                    darkColor: const Color(0xFF8A6642)),
              ],
            ),
            Row(
              children: [
                numbersButton(
                    text: '1',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '2',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '3',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '+',
                    lightColor: const Color(0xFFD3A478),
                    darkColor: const Color(0xFF8A6642)),
              ],
            ),
            Row(
              children: [
                numbersButton(
                    text: '.',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '0',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '-/+',
                    lightColor: const Color(0xFFF3DFC7),
                    darkColor: const Color(0xFF7C6B5B)),
                numbersButton(
                    text: '=',
                    lightColor: const Color(0xFFFAD587),
                    darkColor: const Color(0xffA57B2F)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
