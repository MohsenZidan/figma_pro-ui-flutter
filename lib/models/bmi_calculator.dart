class BmiCalculator {

  static double calculatorBmi (int weight ,double heightCm){
    double heightM = heightCm /100 ;
    return  weight /(heightM*heightM);

  }
  static String getBmiCatogory (double bmi){
    if(bmi <18.5){
      return "underweight";
    }else if (bmi >=18.5 && bmi <24.9){
      return 'normal';
    }else if (bmi >= 25 && bmi < 29.9){
      return ' overweight';
    }else {
      return 'obesity' ;
    }
  }
  static String getBmiMessage ( double bmi){
    if(bmi <18.5){
      return "you need to eat more";
    }else if (bmi >=18.5 && bmi <24.9){
      return 'you have a normal weight';
    }else if (bmi >= 25 && bmi < 29.9){
      return ' consider eating less';
    }else {
      return 'you net to get fit' ;
    }


  }

}