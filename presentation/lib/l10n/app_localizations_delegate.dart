import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:presentation/l10n/app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  AppLocalizationsDelegate._();

  static final AppLocalizationsDelegate instance = AppLocalizationsDelegate._();

  final Map<String, AppLocalizations> appLocalizations = {};

  void initLocales({required Map<String, AppLocalizations> mapOfKeys}) => appLocalizations.addAll(mapOfKeys);

  List<Locale> get supportedLocales {
    return appLocalizations.keys.map((e) {
      final code = e.split('_');
      if (code.length > 1) {
        return Locale(code[0], code[1]);
      }
      return Locale(code[0]);
    }).toList();
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(_lookupAppLocalizations(instance.appLocalizations, locale));
  }

  @override
  bool isSupported(Locale locale) {
    final languageCountryCode = _getLanguageCountryCode(locale);

    if (languageCountryCode.isNotEmpty) {
      return appLocalizations.keys.contains(languageCountryCode);
    }

    return appLocalizations.keys.contains(locale.languageCode);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;

  String _getLanguageCountryCode(Locale locale) {
    String languageCountryCode = '';

    if (locale.countryCode != null) {
      languageCountryCode = '${locale.languageCode}_${locale.countryCode}';
    }

    return languageCountryCode;
  }

  AppLocalizations _lookupAppLocalizations(Map<String, AppLocalizations> appLocalizations, Locale locale) {
    final languageCode = locale.languageCode;
    final languageCountryCode = _getLanguageCountryCode(locale);

    if (appLocalizations.containsKey(languageCode)) {
      if (languageCountryCode.isNotEmpty && appLocalizations.containsKey(languageCountryCode)) {
        return appLocalizations[languageCountryCode]!;
      }
      return appLocalizations[languageCode]!;
    }

    throw FlutterError('AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
        'an issue with the localizations generation tool. Please file an issue '
        'on GitHub with a reproducible sample app and the gen-l10n configuration '
        'that was used.');
  }
}
