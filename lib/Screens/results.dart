import 'package:bmi_calculator/constants.dart';
import 'file:///V:/flutter/bmi/bmi-calculator-flutter/lib/Screens/input.dart';
import 'package:flutter/material.dart';
import '../Components/BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmi,this.result,this.interpretation);

  final String result;
  final String bmi;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
            
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: kinactiveCardColor,
                borderRadius: BorderRadius.circular(10.0)
              ),
              margin: EdgeInsets.all(15.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(bmi, style: kBMIResultTextStyle),
                  Text(
                    interpretation,
                    style: kBMItext,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        BottomButton(onTap: (){
          Navigator.pop(context);
        },
          title: "RE-CALCULATE",
        )
        ],
      ),
    );
  }
}
