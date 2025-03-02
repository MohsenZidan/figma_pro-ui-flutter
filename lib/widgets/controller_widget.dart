import 'package:figma_pro/constants/constants.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const SliderWidget({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        color: AppConstants.containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              value.toString(),
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: onDecrement,
                  icon: Icon(Icons.remove, color: Colors.white),
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: onIncrement,
                  icon: Icon(Icons.add, color: Colors.white),
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
