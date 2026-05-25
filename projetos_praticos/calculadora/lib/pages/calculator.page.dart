import 'package:calculadora/enums/operation.type.dart';
import 'package:calculadora/widgets/button.widget.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  late String displayNumber;
  OperationTypeEnum? operationType;

  @override
  void initState() {
    displayNumber = '0';
    super.initState();
  }

  void setOperationType(OperationTypeEnum newType) {
    setState(() {
      operationType = newType;
      displayNumber += newType.symbol;
    });
  }

  void clear() {
    setState(() {
      displayNumber = '0';
      operationType = null;
    });
  }

  List<double> parseNumber(String expression) {
    RegExp regExp = RegExp(r'[0-9]+\.?[0-9]*');

    var matches = regExp.allMatches(expression);

    for (var match in matches) {
      String numberText = match.group(0)!;
      print(numberText);
    }

    return [0];
  }

  void calculate() {
    String expression = displayNumber.replaceAll(',', '.');
    List<double> numbers = parseNumber(expression);
  }

  void appendNumber(String stringNumber) {
    setState(() {
      if (displayNumber == '0') {
        displayNumber = stringNumber;
      } else {
        displayNumber += stringNumber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora'), centerTitle: true),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.black12,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                displayNumber,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ButtonWidget(
                    text: 'C',
                    onPressed: () {
                      clear();
                    },
                    color: Colors.red,
                  ),
                  ButtonWidget(
                    text: '\u232B',
                    onPressed: () {},
                    color: Colors.orange,
                  ),
                  ButtonWidget(
                    text: '÷',
                    onPressed: () {
                      setOperationType(OperationTypeEnum.division);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(
                    text: '7',
                    onPressed: () {
                      appendNumber('7');
                    },
                  ),
                  ButtonWidget(
                    text: '8',
                    onPressed: () {
                      appendNumber('8');
                    },
                  ),
                  ButtonWidget(
                    text: '9',
                    onPressed: () {
                      appendNumber('9');
                    },
                  ),
                  ButtonWidget(
                    text: 'x',
                    onPressed: () {
                      setOperationType(OperationTypeEnum.multiplication);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(
                    text: '4',
                    onPressed: () {
                      appendNumber('4');
                    },
                  ),
                  ButtonWidget(
                    text: '5',
                    onPressed: () {
                      appendNumber('5');
                    },
                  ),
                  ButtonWidget(
                    text: '6',
                    onPressed: () {
                      appendNumber('6');
                    },
                  ),
                  ButtonWidget(
                    text: '-',
                    onPressed: () {
                      setOperationType(OperationTypeEnum.subtraction);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(
                    text: '1',
                    onPressed: () {
                      appendNumber('1');
                    },
                  ),
                  ButtonWidget(
                    text: '3',
                    onPressed: () {
                      appendNumber('3');
                    },
                  ),
                  ButtonWidget(
                    text: '4',
                    onPressed: () {
                      appendNumber('4');
                    },
                  ),
                  ButtonWidget(
                    text: '+',
                    onPressed: () {
                      setOperationType(OperationTypeEnum.addition);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(
                    text: '0',
                    onPressed: () {
                      appendNumber('0');
                    },
                  ),
                  ButtonWidget(
                    text: ',',
                    onPressed: () {
                      appendNumber(',');
                    },
                  ),
                  ButtonWidget(
                    text: '=',
                    onPressed: () {},
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
