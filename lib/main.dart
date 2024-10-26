import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medforall/bloc/language_cubit.dart';
import 'package:medforall/generated/l10n.dart';
import 'widgets/registration.dart';
import 'auth/login.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          if (state is Arabic) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: const Locale('ar'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              home: Scaffold(
                body: SafeArea(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: <Widget>[
                          const Component2Widget(),
                          Positioned(
                            top: constraints.maxHeight * 0.03,
                            left: constraints.maxWidth * 0.03,
                            right: constraints.maxWidth * 0.03,
                            child: const ImageSliderWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.60,
                            left: constraints.maxWidth * 0.03,
                            right: constraints.maxWidth * 0.03,
                            child: const BoxWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.57,
                            left: constraints.maxWidth * 0.34,
                            child: const LogoWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.69,
                            left: constraints.maxWidth * 0.31,
                            child: const AppNameWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.74,
                            left: constraints.maxWidth * 0.03,
                            right: constraints.maxWidth * 0.03,
                            child: const CommentWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.80,
                            left: constraints.maxWidth * 0.17,
                            child: const GetStartedWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.85,
                            left: constraints.maxWidth * 0.19,
                            child: const NamesmallWidget(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: const Locale('en'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              home: Scaffold(
                body: SafeArea(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: <Widget>[
                          const Component2Widget(),
                          Positioned(
                            top: constraints.maxHeight * 0.03,
                            left: constraints.maxWidth * 0.03,
                            right: constraints.maxWidth * 0.03,
                            child: const ImageSliderWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.60,
                            left: constraints.maxWidth * 0.03,
                            right: constraints.maxWidth * 0.03,
                            child: const BoxWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.57,
                            left: constraints.maxWidth * 0.34,
                            child: const LogoWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.69,
                            left: constraints.maxWidth * 0.31,
                            child: const AppNameWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.74,
                            left: constraints.maxWidth * 0.03,
                            right: constraints.maxWidth * 0.03,
                            child: const CommentWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.80,
                            left: constraints.maxWidth * 0.17,
                            child: const GetStartedWidget(),
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.85,
                            left: constraints.maxWidth * 0.19,
                            child: const NamesmallWidget(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          }
        },
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
            Color.fromRGBO(255, 87, 87, 1),
            Color.fromRGBO(255, 189, 89, 1)
          ],
        ),
      ),
    );
  }
}

class ImageSliderWidget extends StatefulWidget {
  const ImageSliderWidget({super.key});

  @override
  _ImageSliderWidgetState createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> _images = [
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.35,
      child: PageView.builder(
        controller: _pageController,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Image.asset(
            _images[index],
            // fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'MED SHARE',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color.fromRGBO(49, 49, 49, 1),
        fontFamily: 'Montserrat',
        fontSize: MediaQuery.of(context).size.width * 0.06,
        fontWeight: FontWeight.bold,
        height: 1,
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Become a member of MedShare community.\nSave a life, today.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color.fromRGBO(55, 55, 55, 1),
        fontSize: MediaQuery.of(context).size.width * 0.04,
        fontWeight: FontWeight.normal,
        height: 1,
      ),
    );
  }
}

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to SignUpPage with slide animation from right to left
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const RegistrationWidget(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0); // Start from right
              const end = Offset.zero; // End at center
              const curve = Curves.easeInOut;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment(1.93, 0.32),
            end: Alignment(-0.32, 0.11),
            colors: [
              Color.fromRGBO(255, 189, 89, 1),
              Color.fromRGBO(255, 87, 87, 1),
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.2,
          vertical: MediaQuery.of(context).size.height * 0.008,
        ),
        child: Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'Montserrat',
            fontSize: MediaQuery.of(context).size.width * 0.045,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class NamesmallWidget extends StatelessWidget {
  const NamesmallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.015,
            left: MediaQuery.of(context).size.width * 0.03,
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
                    text: 'Login in.',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to LoginPage with slide animation from right to left
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const LoginWidget(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              const begin =
                                  Offset(1.0, 0.0); // Start from right
                              const end = Offset.zero; // End at center
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
