import 'dart:ui';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Registration',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: screenHeight * 0.025,
          ),
        ),
        backgroundColor: const Color(0xff3E9C8F),
        surfaceTintColor: const Color(0xff3E9C8F),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02,
          horizontal: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2), ////////////////////////////
            Text(
              'Register your medicines!',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: screenHeight * 0.03,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Find the sticker on the medicine box. Scan or type the vertical code.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenHeight * 0.02,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 10), /////////////////////////////
            Image.asset(
              'assets/images/medicineScan.jpg',
              height: screenHeight * 0.35,
              width: screenWidth * 0.7,
              fit: BoxFit.contain,
            ),
            const Spacer(flex: 10), ////////////////////////////
            SizedBox(
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff3E9C8F),
                  ),
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                      horizontal: screenWidth * 0.05,
                    ),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Scan the vertical code',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.02,
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.01),

            SizedBox(
              width: screenWidth * 0.90,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff3E9C8F),
                  ),
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                      horizontal: screenWidth * 0.05,
                    ),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Type the vertical code',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.02, // Responsive text size
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.02),
            GestureDetector(
              onTap: () {
                // scan the code here
              },
              child: Text(
                'There isn\'t a sticker in the box',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 1.0,
                  fontWeight: FontWeight.w500,
                  fontSize: screenHeight * 0.020,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(flex: 2), ////////////////////////////
          ],
        ),
      ),
    );
  }
}
