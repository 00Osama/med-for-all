import 'package:flutter/material.dart';
import 'package:medforall/models/faq.dart';

class FaqItem extends StatelessWidget {
  const FaqItem({
    super.key,
    required this.faq,
  });

  final FaqModel faq;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            faq.question,
            softWrap: true,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            faq.answer,
            softWrap: true,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: height * 0.02,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
