import 'package:bmi_calculator/widgets/BottomContainer.dart';
import 'package:bmi_calculator/widgets/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {@required this.bmi, @required this.result, @required this.suggestion});

  final bmi;
  final result;
  final suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text(
          'BMI CALCULATOR',
          style: kAppBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: kBackgroundColor,
          child: Column(
            children: [
              ReusableCard(
                cardColor: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        result,
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmi,
                        style: kBigTextStyle.copyWith(fontSize: 70),
                      ),
                    ),
                    Center(
                      child: Text(
                        suggestion,
                        style: kResultTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: BottomContainer('RE-CALCULATE'))
            ],
          ),
        ),
      ),
    );
  }
}
