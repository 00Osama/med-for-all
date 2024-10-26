import 'package:flutter/material.dart';
import 'package:medforall/models/med_type.dart';

class MedType extends StatelessWidget {
  const MedType({
    super.key,
    required this.medModel,
  });

  final MedTypeModel medModel;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff3E9C8F),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          children: [
            const Spacer(flex: 1),
            Image.asset(
              'assets/images/medTypeIcon.png',
              height: height * 0.1,
              width: width * 0.1,
              fit: BoxFit.contain,
            ),
            const Spacer(flex: 1),
            Column(
              children: [
                Text(
                  medModel.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: height * 0.02,
                  ),
                ),
                Text(
                  medModel.subTitle,
                  style: TextStyle(
                    color: const Color(0xff727272),
                    fontSize: height * 0.015,
                  ),
                ),
              ],
            ),
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Container(
                color: Colors.white,
                height: height * 0.09,
                width: width * 0.30,
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      medModel.medType,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff469CBF),
                        fontSize: height * 0.02,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
