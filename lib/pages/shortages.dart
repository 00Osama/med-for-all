import 'package:flutter/material.dart';
import 'package:medforall/widgets/donated_medicine.dart';

class Shortages extends StatelessWidget {
  const Shortages({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Community Effect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
        backgroundColor: const Color(0xff3E9C8F),
        surfaceTintColor: const Color(0xff3E9C8F),
      ),
      body: ListView(
        children: const [
          Center(
            child: Text(
              'Our community in numbers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'Thank you for being part of it!',
              style: TextStyle(),
            ),
          ),
          SizedBox(height: 17),
          DonatedMedicine(
            image: 'assets/images/boxesOfMedicine.png',
            number: 566165,
            title: 'boxes of medicine are donated',
            subTitle:
                'Because of you, the medicines reached people that need them!',
            showDivider: false,
          ),
          DonatedMedicine(
            image: 'assets/images/saved.png',
            number: 7380809,
            title: 'boxes of medicine are donated',
            subTitle:
                'The institutions we co-optmith will cover with those (medicines) other need of the people they support!',
            showDivider: true,
          ),
          DonatedMedicine(
            image: 'assets/images/medicineRequests.png',
            number: 129556,
            title: 'boxes of medicine are donated',
            subTitle:
                'We have a lot to do more to cover these medicine needs! Support us by donating your leftover medicines!',
            showDivider: true,
          ),
          DonatedMedicine(
            image: 'assets/images/helped.png',
            number: 159,
            title: 'boxes of medicine are donated',
            subTitle:
                'Our network is continuously growing! Do you know any institution that needs medicine? Let us know here!',
            showDivider: true,
          ),
        ],
      ),
    );
  }
}
