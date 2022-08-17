import 'dart:math';
class CalculatorBrain {

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI(){
    double _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if (_bmi >= 25){
      return 'Overweight';
    } else if (_bmi > 18.5 ) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'Try to exercise more.';
    } else if (_bmi > 18.5 ) {
      return 'Keep fit';
    } else {
      return 'Eat more please.';
    }
  }
}