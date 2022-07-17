import 'dart:math';
class BmiCalculation
{
  final int weight;
  final int height;

    double? _bmi;
  BmiCalculation({
    required this.weight,
    required this.height,

});
  String calculateBMI()
  {
    _bmi = weight/pow(height/100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult()
  {
    if(_bmi! > 25)
      {
        return 'Over weight';
      }else if(_bmi! > 18.5)
        {
          return 'Normal';
        }else
          {
            return 'Under Weight';
          }
  }

  String getFeedback()
  {
    if(_bmi! > 25)
    {
      return 'You have a higher body weight. Exercise more.';
    }else if(_bmi! > 18.5)
    {
      return 'You have a normal body weight. Good job!!';
    }else
    {
      return 'You have a normal body weight. Eat a bit more. ';
    }
  }
}