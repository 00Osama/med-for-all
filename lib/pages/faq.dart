import 'package:flutter/material.dart';
import 'package:medforall/models/faq.dart';
import 'package:medforall/widgets/faq_item.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  bool myAnimation = false;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((itemStamp) {
      setState(() {
        myAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'F.A.Q',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
        backgroundColor: const Color(0xff3E9C8F),
        surfaceTintColor: const Color(0xff3E9C8F),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: faqList.length,
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 400 + (index * 200)),
            curve: Curves.easeIn,
            transform: Matrix4.translationValues(myAnimation ? 0 : width, 0, 0),
            child: FaqItem(
              faq: faqList[index],
            ),
          );
        },
      ),
    );
  }
}
