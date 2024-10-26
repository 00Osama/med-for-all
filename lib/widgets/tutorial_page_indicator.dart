import 'package:flutter/material.dart';

class TutorialPageIndicator extends StatelessWidget {
  const TutorialPageIndicator({
    super.key,
    required this.indexNumber,
  });

  final int indexNumber;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Row(
        children: [
          const Spacer(flex: 9),
          CircleAvatar(
            radius: screenWidth * 0.017,
            backgroundColor:
                indexNumber == 0 ? const Color(0xff3E9C8F) : Colors.black,
          ),
          const SizedBox(width: 4),
          CircleAvatar(
            radius: screenWidth * 0.017,
            backgroundColor:
                indexNumber == 1 ? const Color(0xff3E9C8F) : Colors.black,
          ),
          const SizedBox(width: 4),
          CircleAvatar(
            radius: screenWidth * 0.017,
            backgroundColor:
                indexNumber == 2 ? const Color(0xff3E9C8F) : Colors.black,
          ),
          const SizedBox(width: 4),
          CircleAvatar(
            radius: screenWidth * 0.017,
            backgroundColor:
                indexNumber == 3 ? const Color(0xff3E9C8F) : Colors.black,
          ),
          const Spacer(flex: 9),
        ],
      ),
    );
  }
}
