import 'package:figma_pro/constants/constants.dart';
import 'package:figma_pro/result_screen.dart';
import 'package:figma_pro/widgets/controller_widget.dart';
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
                      "height",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Row(
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "cm",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                  ],
                ),
                Expanded(
                  child: Slider(
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
                ),
              ],
            ),
            // الوزن والعمر
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SliderWidget(
                  title: "Weight",
                  value: weight,
                  onIncrement: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
                SliderWidget(
                  title: "Age",
                  value: age,
                  onIncrement: () {
                    setState(() {
                      age++;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResultScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: AppConstants.sliderColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Text(
                  'Calculator',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
