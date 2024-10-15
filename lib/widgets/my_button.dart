import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.image,
    required this.title,
    required this.centered,
  });

  final String image;
  final String title;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: Offset(9, 9),
                      ),
                    ],
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffFF5757),
                        Color(0xffFFBD59),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: centered
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    //     const Spacer(flex: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        image,
                        height: screenWidth * 0.08,
                        width: screenWidth * 0.08,
                      ),
                    ),
                    // const Spacer(flex: 1),
                    Flexible(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04, // Responsive font size
                        ),
                        maxLines: 2, // Allow up to two lines
                        overflow: TextOverflow
                            .ellipsis, // Show ellipsis if overflow happens
                        softWrap: true, // Allow wrapping to the next line
                        // textAlign:
                        //   TextAlign.center, // Optional: Center-align the text
                      ),
                    ),
                    // const Spacer(flex: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
