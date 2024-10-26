import 'package:flutter/material.dart';
import 'package:medforall/generated/l10n.dart';
import 'package:medforall/tabs/completed.dart';
import 'package:medforall/tabs/scheduled.dart';

class Donations extends StatelessWidget {
  const Donations({
    super.key,
    required this.showBaseTitle,
  });
  final bool showBaseTitle;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: showBaseTitle == true
              ? Text(
                  'Donations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: screenHeight * 0.025,
                  ),
                )
              : Text(
                  S.of(context).step3,
                  style: TextStyle(
                    color: const Color(0xff3E9C8F),
                    fontSize: screenHeight * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          centerTitle: showBaseTitle == true ? false : true,
          backgroundColor:
              showBaseTitle == true ? const Color(0xff3E9C8F) : Colors.white,
          surfaceTintColor:
              showBaseTitle == true ? const Color(0xff3E9C8F) : Colors.white,
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
        ),
        body: Column(
          children: [
            Container(
              color: showBaseTitle == true
                  ? const Color(0xff3E9C8F)
                  : Colors.white,
              child: TabBar(
                indicatorColor: showBaseTitle == true
                    ? Colors.white
                    : const Color(0xff3E9C8F),
                labelColor: showBaseTitle == true
                    ? Colors.white
                    : const Color(0xff3E9C8F),
                unselectedLabelColor: showBaseTitle == true
                    ? Colors.white
                    : const Color(0xff3E9C8F),
                tabs: [
                  Tab(
                    icon: Text(S.of(context).scheduled),
                  ),
                  Tab(
                    icon: Text(S.of(context).completed),
                  )
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Scheduled(),
                  Completed(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
