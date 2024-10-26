import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medforall/bloc/language_cubit.dart';
import 'package:medforall/generated/l10n.dart';
import 'package:medforall/pages/controller.dart';

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
                      return const Controller();
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
                      return const Controller();
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
      onTap: () {},
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
