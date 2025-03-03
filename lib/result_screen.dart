import 'package:figma_pro/constants/constants.dart';
import 'package:figma_pro/models/bmi_calculator.dart';
import 'package:figma_pro/widgets/custom_bottom.dart';
import 'package:figma_pro/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final double bmi ;
  const ResultScreen({super.key, required this.bmi});
  @override
  State<ResultScreen> createState() => _ResultScreenState();
  
}

class _ResultScreenState extends State<ResultScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppConstants.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Your Result', style: TextStyle(fontSize: 40 ,fontWeight: FontWeight.w700 , color: Colors.white),),
            Expanded(
              child: Container(
                width: 319,
                height: 450,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(BmiCalculator.getBmiCatogory(bmi),style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w600 , color: Colors.green)),
                    Text(bmi.roundToDouble().toString(),style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w600 , color: Colors.white)),
                    Text(BmiCalculator.getBmiMessage(bmi),style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w600 , color: Colors.white)),


                  ],
                ),
              ),
            ),
              CustomButton(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => BmiCalculator()),
                    (route) => false);
              },
              text: "Re-calculate",
            )
          ],
        ),
      ),
    );
  }
}