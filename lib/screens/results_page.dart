import 'package:bmi_calculator_project/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);


  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: const Text('Your Result',
            style: kTitleTextStyle,),
          ),
          ),
          Expanded(
          flex: 5,
          child: ReusableCard(
    colour: kActiveCardColor,
    cardChild: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(resultText.toUpperCase(),
    style: kResultTextStyle,),
    Text(
    bmiResult,
    style: kBMITextStyle,
    ),
    Text(
    interpretation,
    textAlign: TextAlign.center,
    style: kBodyTextStyle,
    )
    ],
    ), onPress: (){},
    ),
          ),
        BottomButton(onTap: (){
          Navigator.pop(context);
        }, buttonTitle: 'RE-CALCULATE')],
      ),
    );
  }
}
