import 'file:///V:/flutter/bmi/bmi-calculator-flutter/lib/Screens/results.dart';
import 'package:bmi_calculator/CalculatorBrain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';
import '../Components/ReusableCard.dart';
import '../Components/IconContent.dart';
import '../constants.dart';
import 'file:///V:/flutter/bmi/bmi-calculator-flutter/lib/Components/RoundIconButton.dart';
import '../Components/BottomButton.dart';

enum genderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 21;
  genderType gender;
  Color MaleCardColor = kinactiveCardColor;
  Color FemaleCardColor = kinactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = genderType.male;
                      });
                    },
                    colour: gender == genderType.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cusChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      content: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = genderType.female;
                      });
                    },
                    colour: gender == genderType.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cusChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      content: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kinactiveCardColor,
              cusChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: knumberTextStyle,
                      ),
                      Text(
                        " cm",
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kactiveCardColor,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: kactiveCardColor,
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
//                      print(newValue);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kinactiveCardColor,
                    cusChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: klabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: knumberTextStyle,
                            ),
                            Text(
                              " kgs",
                              style: klabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//                            FloatingActionButton(
//                            onPressed: (){
//                              setState(() {
//                                weight+=1;
//                              });
//                            },
//                            backgroundColor: Color(0xFF4C4F5E),
//                            child: Icon(Icons.add,),
//                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              state: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
//                            FloatingActionButton(
//                              onPressed: (){
//                                setState(() {
//                                  weight-=1;
//                                });
//                              },
//                              backgroundColor: Color(0xFF4C4F5E),
//                              child: Icon(Icons.remove,),
//                            )
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              state: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kinactiveCardColor,
                    cusChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: klabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: knumberTextStyle,
                            ),
                            Text(
                              " years",
                              style: klabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//                            FloatingActionButton(
//                            onPressed: (){
//                              setState(() {
//                                weight+=1;
//                              });
//                            },
//                            backgroundColor: Color(0xFF4C4F5E),
//                            child: Icon(Icons.add,),
//                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              state: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
//                            FloatingActionButton(
//                              onPressed: (){
//                                setState(() {
//                                  weight-=1;
//                                });
//                              },
//                              backgroundColor: Color(0xFF4C4F5E),
//                              child: Icon(Icons.remove,),
//                            )
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              state: () {
                                setState(() {
                                  age -= 1;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: (){
              CalculatorBrain cal = CalculatorBrain(weight: weight,height: height);

              Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage(cal.calculatebmi(),cal.getResult(),cal.getInterpretation()),),);
            },
            title: "CALCULATE",
          )
        ],
      ),
    );
  }
}



