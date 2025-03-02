
import 'package:figma_pro/constants/constants.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final String image;
  final String title;

  const GenderWidget({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: AppConstants.containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 80),
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        
        ],
      ),
    );
  }
}
