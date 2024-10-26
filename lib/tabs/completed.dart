import 'package:flutter/material.dart';
import 'package:medforall/generated/l10n.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.done_rounded,
              color: Colors.green,
              size: screenHeight * 0.15,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                S.of(context).your_donation_reach,
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
