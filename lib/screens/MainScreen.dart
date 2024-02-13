import 'package:bmi_calculator/BMIBrain.dart';
import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/IconTextWidget.dart';
import '../widgets/ReusableCard.dart';
import '../widgets/CustomButton.dart';
import '../widgets/BottomContainer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender? selectedGender;
  int height = 180;
  int weight = 80;
  int age = 20;

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
      body: Container(
        color: kBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardColor: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: IconText(
                    Icons.male,
                    'MALE',
                  ),
                ),
                ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardColor: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: IconText(
                    Icons.female,
                    'FEMALE',
                  ),
                ),
              ],
            ),
            ReusableCard(
              cardColor: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: kBigTextStyle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 220,
                    onChanged: (newHeight) {
                      setState(() {
                        height = newHeight.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
            Row(
              children: [
                ReusableCard(
                  cardColor: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'WEIGHT',
                        style: kTextStyle,
                      ),
                      Text(
                        '$weight',
                        style: kBigTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            childIcon: Icons.remove,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomButton(
                            childIcon: Icons.add,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ReusableCard(
                  cardColor: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: kTextStyle,
                      ),
                      Text(
                        '$age',
                        style: kBigTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            childIcon: Icons.remove,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomButton(
                            childIcon: Icons.add,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                //go to results page
                BMIBrain bmiBrain =
                    BMIBrain(height.toDouble(), weight.toDouble());
                double bmi = bmiBrain.getBMI();
                String result = bmiBrain.getResult();
                String suggestion = bmiBrain.getSuggestion();
                // Navigator.pushNamed(context, '/results',arguments: [bmi,result,suggestion]);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            bmi: bmi.toStringAsFixed(1),
                            result: result,
                            suggestion: suggestion)));
              },
              child: BottomContainer('CALCULATE'),
            )
          ],
        ),
      ),
    );
  }
}
