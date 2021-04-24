import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_brain.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:flutter_calculator/roundButton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';

  //the brain for our calculator
  CalculatorBrain calc = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEBEC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 70,
                      maxWidth: 300,
                    ),
                    child: Text(
                      result,
                      style: kResultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    calc.resultOperationText,
                    style: kOperationTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: 'AC',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '+/-',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+/-");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '%',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("%");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '÷',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("÷");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '7',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("7");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '8',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("8");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '9',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("9");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: 'x',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("x");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '4',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("4");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '5',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("5");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '6',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("6");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '-',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("-");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '1',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("1");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '2',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("2");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '3',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("3");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '+',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundButton(
                      buttonText: '0',
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40.0)),
                      colorText: kBlackColorText,
                      buttonWidth: 2.9,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("0");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '.',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed(".");
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '=',
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("=");
                        });
                      },
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
