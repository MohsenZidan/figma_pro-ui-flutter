import 'package:figma_pro/constants/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

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
                    Text("normal",style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w600 , color: Colors.green)),
                    Text("190",style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w600 , color: Colors.white)),
                    Text("You have a normal Body Weight,\n             Good Job ",style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w600 , color: Colors.white)),


                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
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
                  'Re Calculator',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}