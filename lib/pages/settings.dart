import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final notificationsController = ValueNotifier<bool>(false);
  final languageController = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();

    notificationsController.addListener(
      () {
        setState(() {
          if (notificationsController.value) {
            // turn Notifications on
          } else {
            // turn Notifications off
          }
        });
      },
    );

    languageController.addListener(
      () {
        setState(() {
          if (languageController.value) {
            // AR language
          } else {
            // EN language
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Responsive font size
    double fontSize = screenHeight * 0.03;
    double smallFontSize = screenHeight * 0.020;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: screenHeight * 0.025,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            Row(
              children: [
                const Spacer(flex: 1),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize,
                  ),
                ),
                const Spacer(flex: 2),
                AdvancedSwitch(
                  controller: notificationsController,
                  activeColor: Colors.orangeAccent,
                  inactiveColor: Colors.deepOrange,
                  activeChild: const Text('ON'),
                  inactiveChild: const Text('OFF'),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.05,
                  enabled: true,
                  disabledOpacity: 0.5,
                ),
                const Spacer(flex: 1),
              ],
            ),
            SizedBox(height: screenHeight * 0.015),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                'Allow the application to send notifications about the medicines.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: smallFontSize,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: screenHeight * 0.04,
            ),
            Row(
              children: [
                const Spacer(flex: 1),
                Text(
                  'Language',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize,
                  ),
                ),
                const Spacer(flex: 2),
                AdvancedSwitch(
                  controller: languageController,
                  activeColor: const Color(0xff1E90FF),
                  inactiveColor: const Color(0xff008000),
                  activeChild: const Text('english'),
                  inactiveChild: const Text('عربي'),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.05,
                  enabled: true,
                  disabledOpacity: 0.5,
                ),
                const Spacer(flex: 1),
              ],
            ),
            SizedBox(height: screenHeight * 0.015),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                'Select the language in which you want to use the application',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: smallFontSize,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: screenHeight * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
