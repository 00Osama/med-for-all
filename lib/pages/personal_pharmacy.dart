import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:medforall/generated/l10n.dart';
import 'package:medforall/models/med_type.dart';
import 'package:medforall/widgets/med_type.dart';

class PersonalPharmacy extends StatelessWidget {
  const PersonalPharmacy({
    super.key,
    required this.showBaseTitle,
  });

  final bool showBaseTitle;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    List<MedTypeModel> medTypes = [
      MedTypeModel(
        title: 'title 1',
        subTitle: 'sub title 1',
        medType: 'med 1',
      ),
      MedTypeModel(
        title: 'title 2',
        subTitle: 'sub title 2',
        medType: 'med 2',
      ),
      MedTypeModel(
        title: 'title 3',
        subTitle: 'sub title 3',
        medType: 'med 3',
      ),
      MedTypeModel(
        title: 'title 4',
        subTitle: 'sub title 4',
        medType: 'med 4',
      ),
      MedTypeModel(
        title: 'title 5',
        subTitle: 'sub title 5',
        medType: 'med 5',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: showBaseTitle == true
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                ),
              )
            : const SizedBox(),
        centerTitle: showBaseTitle == true ? false : true,
        title: showBaseTitle == true
            ? Row(
                children: [
                  Text(
                    'Personal Pharmacy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ],
              )
            : Text(
                S.of(context).step2,
                style: TextStyle(
                  color: const Color(0xff3E9C8F),
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.bold,
                ),
              ),
        backgroundColor:
            showBaseTitle == true ? const Color(0xff3E9C8F) : Colors.white,
        surfaceTintColor:
            showBaseTitle == true ? const Color(0xff3E9C8F) : Colors.white,
      ),
      body: ListView.builder(
        itemCount: medTypes.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 5),
              Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: BorderRadius.circular(14),
                      onPressed: (context) {},
                      backgroundColor: const Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                    const SizedBox(width: 4),
                    SlidableAction(
                      borderRadius: BorderRadius.circular(14),
                      onPressed: (context) {},
                      backgroundColor: const Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                    ),
                  ],
                ),
                child: MedType(
                  medModel: medTypes[index],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
