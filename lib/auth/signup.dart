import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:medforall/auth/login.dart';

class Component2Widget extends StatelessWidget {
  const Component2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.11, -1.5),
          end: Alignment(1.85, 0.0),
          colors: [
            Color.fromRGBO(250, 248, 248, 1.0),
            Color.fromRGBO(255, 189, 89, 0.0)
          ],
        ),
      ),
    );
  }
}

class Ellipse4Widget extends StatefulWidget {
  const Ellipse4Widget({super.key});

  @override
  _Ellipse4WidgetState createState() => _Ellipse4WidgetState();
}

class _Ellipse4WidgetState extends State<Ellipse4Widget> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 48.99999955470795 * (math.pi / 180),
      child: Container(
          width: 250,
          height: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.7710826992988586, -0.24833865463733673),
                end: Alignment(0.24833865463733673, 0.7710826992988586),
                colors: [
                  Color.fromRGBO(255, 87, 87, 1),
                  Color.fromRGBO(255, 189, 89, 1)
                ]),
            borderRadius: BorderRadius.all(Radius.elliptical(150, 150)),
          )),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 196,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Medshaer42.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key});

  @override
  _TitleWidgetState createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 188,
        height: 69,
        child: Stack(children: <Widget>[
          Positioned(
              child: Text(
            'Sign UP',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 100, 89, 1),
                fontFamily: 'Montserrat',
                fontSize: 35,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1),
          )),
        ]));
  }
}

class FirstNameWidget extends StatefulWidget {
  const FirstNameWidget({super.key});

  @override
  _FirstNameWidgetState createState() => _FirstNameWidgetState();
}

class _FirstNameWidgetState extends State<FirstNameWidget> {
  // Controller for text input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Input field
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Your First Name',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none, // Remove border to match design
                  contentPadding: EdgeInsets.only(left: 16, bottom: 0),
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'First Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LastNameWidget extends StatefulWidget {
  const LastNameWidget({super.key});

  @override
  _LastNameWidgetState createState() => _LastNameWidgetState();
}

class _LastNameWidgetState extends State<LastNameWidget> {
  // Controller for text input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Input field
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Your Last Name',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 16, bottom: 0),
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Last Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InputEmailWidget extends StatefulWidget {
  const InputEmailWidget({super.key});

  @override
  _InputEmailWidgetState createState() => _InputEmailWidgetState();
}

class _InputEmailWidgetState extends State<InputEmailWidget> {
  // Controller for text input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 310,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Input field
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 16, bottom: 0),
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneWidget extends StatefulWidget {
  const PhoneWidget({super.key});

  @override
  _PhoneWidgetState createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  // Controller for number input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Input field for phone number
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.phone, // Set to phone input
                decoration: const InputDecoration(
                  hintText: 'Your Phone Number',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 16, bottom: 0),
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Phone', // Placeholder phone number
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  // Variable to store selected gender
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Dropdown field for gender selection
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedGender,
                  hint: const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Your Gender',
                      style: TextStyle(
                        color: Color.fromRGBO(127, 127, 127, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                  items: ['Female', 'Male'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Gender', // Gradient header text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CityWidget extends StatefulWidget {
  const CityWidget({super.key});

  @override
  _CityWidgetState createState() => _CityWidgetState();
}

class _CityWidgetState extends State<CityWidget> {
  String? _selectedCity;

  final List<String> cities = [
    'Amman',
    'Zarqa',
    'Irbid',
    'Aqaba',
    'Madaba',
    'Karak',
    'Jarash',
    'Ajloun',
    'Mafraq',
    'Tafila',
    'Ma\'an',
    'Albalqaa'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Dropdown container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 310,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Dropdown field
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedCity,
                  hint: const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Your City',
                      style: TextStyle(
                        color: Color.fromRGBO(127, 127, 127, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                  items: cities.map((String city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(city),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCity = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'City',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key});

  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  // Controller for password input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Input field for password
              child: TextField(
                controller: _controller,
                obscureText: true, // Hide the input
                decoration: const InputDecoration(
                  hintText: 'Your Password',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 16, bottom: 0),
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ConfirmWidget extends StatefulWidget {
  const ConfirmWidget({super.key});

  @override
  _ConfirmWidgetState createState() => _ConfirmWidgetState();
}

class _ConfirmWidgetState extends State<ConfirmWidget> {
  // Controller for password input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: Stack(
        children: <Widget>[
          // Input container with shadow and rounded corners
          Positioned(
            top: 20,
            left: 5,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                color: Colors.white,
              ),
              // Input field for password
              child: TextField(
                controller: _controller,
                obscureText: true, // Hide the input
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(127, 127, 127, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 16, bottom: 0),
                ),
              ),
            ),
          ),
          // Gradient header at the top
          Positioned(
            top: 4,
            left: 17,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  )
                ],
                gradient: const LinearGradient(
                  begin: Alignment(0.77, -0.25),
                  end: Alignment(0.25, 0.77),
                  colors: [
                    Color.fromRGBO(255, 189, 89, 1),
                    Color.fromRGBO(255, 87, 87, 1),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Confirm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignButtonWidget extends StatefulWidget {
  const SignButtonWidget({super.key});

  @override
  _SignButtonWidgetState createState() => _SignButtonWidgetState();
}

class _SignButtonWidgetState extends State<SignButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add functionality here if you want to handle button press
        print("Sign up button pressed");
      },
      child: Container(
        width: 150, // Adjusted width for a more button-like appearance
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.77, -0.25),
            end: Alignment(0.25, 0.77),
            colors: [
              Color.fromRGBO(255, 189, 89, 1),
              Color.fromRGBO(255, 87, 87, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(10), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 5,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Sign up',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white, // Text color for better contrast
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}

class ToLoginWidget extends StatelessWidget {
  const ToLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Text.rich(
              TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  color: const Color.fromRGBO(113, 113, 113, 1),
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.normal,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Login.',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to LoginPage with a fade transition
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const LoginWidget(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin =
                                  Offset(1.0, 0.0); // Start from the right
                              const end = Offset.zero; // End at the center
                              const curve = Curves.easeInOut;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
