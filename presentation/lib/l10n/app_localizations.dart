import 'package:flutter/material.dart';

import 'package:intl/intl.dart' as intl;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:presentation/l10n/map_of_getters.dart';
import 'package:presentation/l10n/app_localizations_delegate.dart';

abstract class AppLocalizations implements MapOfGetters {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate.instance;

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static final List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static final List<Locale> supportedLocales = AppLocalizationsDelegate.instance.supportedLocales;
}
