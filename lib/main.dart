import 'package:flutter/material.dart';

import 'package:fun_facts_bloc/fun_facts_app.dart';
import 'package:fun_facts_bloc/dependency_injection/injector.dart';

import 'package:presentation/l10n/gen_l10n/app_localizations_en.dart';
import 'package:presentation/l10n/gen_l10n/app_localizations_is.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureModuleApp('dev');
  runApp(
    FunFactsApp(
      appLanguages: {
        'en': AppLocalizationsEn(),
        'is': AppLocalizationsIs(),
        'is_IS': AppLocalizationsIsIs(),
      },
    ),
  );
}
