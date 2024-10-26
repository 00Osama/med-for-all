// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Join the GIVMED community! Save a life, today.`
  String get tutorial_title {
    return Intl.message(
      'Join the GIVMED community! Save a life, today.',
      name: 'tutorial_title',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next_button_child {
    return Intl.message(
      'Next',
      name: 'next_button_child',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip_button_child {
    return Intl.message(
      'Skip',
      name: 'skip_button_child',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done_button_child {
    return Intl.message(
      'Done',
      name: 'done_button_child',
      desc: '',
      args: [],
    );
  }

  /// `Step 1`
  String get step1 {
    return Intl.message(
      'Step 1',
      name: 'step1',
      desc: '',
      args: [],
    );
  }

  /// `Step 2`
  String get step2 {
    return Intl.message(
      'Step 2',
      name: 'step2',
      desc: '',
      args: [],
    );
  }

  /// `Step 3`
  String get step3 {
    return Intl.message(
      'Step 3',
      name: 'step3',
      desc: '',
      args: [],
    );
  }

  /// `Scan the vertical code`
  String get scan_button_child {
    return Intl.message(
      'Scan the vertical code',
      name: 'scan_button_child',
      desc: '',
      args: [],
    );
  }

  /// `Type the vertical code`
  String get type_button_child {
    return Intl.message(
      'Type the vertical code',
      name: 'type_button_child',
      desc: '',
      args: [],
    );
  }

  /// `Register Your Medicines!`
  String get register_medicines {
    return Intl.message(
      'Register Your Medicines!',
      name: 'register_medicines',
      desc: '',
      args: [],
    );
  }

  /// `Find the sticker on the medicine box. Scan or type the vertical code.`
  String get find_sticker {
    return Intl.message(
      'Find the sticker on the medicine box. Scan or type the vertical code.',
      name: 'find_sticker',
      desc: '',
      args: [],
    );
  }

  /// `SCHEDULED`
  String get scheduled {
    return Intl.message(
      'SCHEDULED',
      name: 'scheduled',
      desc: '',
      args: [],
    );
  }

  /// `COMPLETED`
  String get completed {
    return Intl.message(
      'COMPLETED',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Your donations that reach the organization in need will appear here!`
  String get your_donation_reach {
    return Intl.message(
      'Your donations that reach the organization in need will appear here!',
      name: 'your_donation_reach',
      desc: '',
      args: [],
    );
  }

  /// `Your donations will appear here when you donate your first medicine!`
  String get your_donation_will {
    return Intl.message(
      'Your donations will appear here when you donate your first medicine!',
      name: 'your_donation_will',
      desc: '',
      args: [],
    );
  }

  /// `english`
  String get lang {
    return Intl.message(
      'english',
      name: 'lang',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
