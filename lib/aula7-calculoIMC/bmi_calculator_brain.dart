import 'dart:math';

class BMICalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0.0;

  BMICalculatorBrain({required this.height, required this.weight}) {
    _calculateBMI();
  }

  void _calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMIAsString() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesidade';
    } else if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Você está muito acima do peso. Convém buscar ajuda médica.';
    } else if (_bmi >= 25) {
      return 'Seu peso está acima do normal. Procure exercitar-se mais.';
    } else if (_bmi >= 18.5) {
      return 'Você tem um peso normal. Parabéns.';
    } else {
      return 'Você está abaixo do peso. Você pode comer um pouco mais.';
    }
  }
}
