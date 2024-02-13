import 'dart:math';

class BMIBrain {
  double height = 180;
  double weight = 80;
  double bmi = 1.0;

  BMIBrain(this.height, this.weight);

  double getBMI() {
    bmi = weight / pow(2, height / 100);
    return bmi;
  }

  String getResult() {
    if (bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'HEALTHY';
    } else if (bmi > 24.9) {
      return 'OVERWEIGHT';
    }
    return '';
  }

  String getSuggestion() {
    if (bmi < 18.5) {
      return 'Your weight is very less according to your height. You should probably eat more!';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Your weight falls in healthy category! Keep it up!';
    } else if (bmi > 24.9) {
      return 'You weight more according to your height. You should probably exercise more!';
    }
    return '';
  }

  void setHeight(double height) {
    this.height = height;
  }

  void setWeight(double weight) {
    this.weight;
  }
}
