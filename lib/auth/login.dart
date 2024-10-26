import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medforall/pages/controller.dart';
import 'dart:math' as math;
import '../widgets/registration.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return const Stack(
              children: <Widget>[
                Component2Widget(),
                Positioned(
                  top: -100,
                  left: -145,
                  child: Ellipse4Widget(),
                ),
                Positioned(
                  top: 12,
                  left: 93,
                  child: LogoWidget(),
                ),
                Positioned(
                  top: 170,
                  left: 13,
                  child: TitleWidget(),
                ),
                Positioned(
                  top: 245,
                  left: 16,
                  child: InputEmailWidget(),
                ),
                Positioned(
                  top: 320,
                  left: 16,
                  child: PasswordWidget(),
                ),
                Positioned(
                  top: 400,
                  left: 16,
                  child: SignButtonWidget(),
                ),
                Positioned(
                  top: 475,
                  left: 40,
                  child: ToSignUpWidget(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

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
            'Log in',
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
        print("Sign in button pressed");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Controller(),
          ),
        );
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
            'Login',
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

class ToSignUpWidget extends StatelessWidget {
  const ToSignUpWidget({super.key});

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
                text: 'Don\'t have an account? ',
                style: TextStyle(
                  color: const Color.fromRGBO(113, 113, 113, 1),
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.normal,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign up.',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const RegistrationWidget(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin =
                                  Offset(3.0, 0.0); // Start from the right
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
