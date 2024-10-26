import 'package:flutter/material.dart';

class DonatedMedicine extends StatelessWidget {
  const DonatedMedicine({
    super.key,
    required this.image,
    required this.number,
    required this.title,
    required this.subTitle,
    required this.showDivider,
  });

  final String image;
  final int number;
  final String title;
  final String subTitle;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: width * 0.05), // Adjust padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showDivider) ...[
            const SizedBox(height: 9),
            const Divider(
              height: 0.2,
              color: Colors.grey,
            ),
            const SizedBox(height: 7),
          ],
          Row(
            children: [
              Image.asset(
                image,
                height: height * 0.08,
                width: width * 0.16,
                fit: BoxFit.contain,
                color: const Color(0xff3E9C8F),
              ),
              SizedBox(width: width * 0.025),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.toString(),
                    softWrap: true,
                    style: TextStyle(
                      fontSize: height * 0.019,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff3E9C8F),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: height * 0.020,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  subTitle,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: height * 0.018,
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
