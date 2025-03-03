import 'package:figma_pro/constants/constants.dart';
import 'package:figma_pro/models/bmi_calculator.dart';
import 'package:figma_pro/result_screen.dart';
import 'package:figma_pro/widgets/customcontroller_widget.dart';
import 'package:figma_pro/widgets/custom_bottom.dart';
import 'package:figma_pro/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 150;
  int weight = 60;
  int age = 26;
  double bmi = 0;

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
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // الجنس
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GenderWidget(image: "assets/male.png", title: "Male"),
                  GenderWidget(image: "assets/female.png", title: "Female"),
                ],
              ),
            ),
            // الطول
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: TextStyle(fontSize: 20, color: AppConstants.textColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "cm",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Slider(
                  min: 120,
                  max: 220,
                  value: height,
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue.roundToDouble();
                    });
                  },
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                ),
                // الوزن والعمر
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomControllerWidget(
                      title: "Weight",
                      value: weight,
                      increment: () {
                        setState(() {
                          weight++;
                        });
                      },
                      decrement: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                    CustomControllerWidget(
                      title: "Age",
                      value: age,
                      increment: () {
                        setState(() {
                          age++;
                        });
                      },
                      decrement: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ],
                ),
                CustomButton(
                  text: "Calculator",
                  onTap: () {
                    bmi = BmiCalculator.calculatorBmi(weight, height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(bmi: bmi),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
