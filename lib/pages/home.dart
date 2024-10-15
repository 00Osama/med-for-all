import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medforall/widgets/my_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        actions: [
          const SizedBox(width: 2),
          Image.asset(
            'assets/medShareTitle.png',
            height: screenWidth * 0.13,
            width: screenWidth * 0.13,
          ),
          const SizedBox(width: 3),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'MED SHARE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[400],
                  fontSize: screenWidth * 0.05,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Image.asset(
                'assets/medShare.png',
                height: screenWidth * 0.20,
                width: screenWidth * 0.20,
              ),
              const Spacer(flex: 1),
              SvgPicture.asset(
                'assets/text.svg',
                height: screenWidth * 0.20,
                width: screenWidth * 0.20,
              ),
              const Spacer(flex: 2),
            ],
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              SizedBox(width: 5),
              MyButton(
                image: 'assets/personalPharmacy.svg',
                title: 'Personal Pharmacy',
                centered: false,
              ),
              SizedBox(width: 5),
              MyButton(
                image: 'assets/registerMedicine.svg',
                title: 'Register Medicine',
                centered: false,
              ),
              SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              SizedBox(width: 5),
              MyButton(
                image: 'assets/donationPoints.svg',
                title: 'Donation Points',
                centered: false,
              ),
              SizedBox(width: 5),
              MyButton(
                image: 'assets/shortages.svg',
                title: 'Shortages',
                centered: false,
              ),
              SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              SizedBox(width: 5),
              MyButton(
                image: 'assets/settings.svg',
                title: 'Settings',
                centered: false,
              ),
              SizedBox(width: 5),
              MyButton(
                image: 'assets/tutorial.svg',
                title: 'Tutorial',
                centered: false,
              ),
              SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              SizedBox(width: 5),
              MyButton(
                image: 'assets/FAQ.svg',
                title: 'F.A.Q',
                centered: true,
              ),
              SizedBox(width: 5),
            ],
          ),
        ],
      ),
    );
  }
}
