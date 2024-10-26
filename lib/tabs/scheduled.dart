import 'package:flutter/material.dart';
import 'package:medforall/generated/l10n.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/donateMedicine.png',
              height: screenHeight * 0.35,
              width: screenWidth * 0.7,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                S.of(context).your_donation_will,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenHeight * 0.022,
                  color: Colors.grey[600],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
