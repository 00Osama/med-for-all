import 'package:flutter/material.dart';

class CheckedAndUnChecked extends StatelessWidget {
  const CheckedAndUnChecked({
    super.key,
    required this.isCheck,
  });

  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.10,
      height: screenWidth * 0.10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isCheck ? Colors.grey : Colors.grey,
          width: screenWidth * 0.005,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.done_rounded,
          color: isCheck ? Colors.grey : Colors.grey,
          size: screenWidth * 0.08,
        ),
      ),
    );
  }
}
