import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:presentation/l10n/app_localizations.dart';
import 'package:presentation/screens/home/home_screen.dart';
import 'package:presentation/blocs/fun_fact/fun_fact_bloc.dart';
import 'package:presentation/l10n/app_localizations_delegate.dart';
import 'package:presentation/blocs/fun_fact_loader/fun_fact_loader_bloc.dart';

class FunFactsApp extends StatefulWidget {
  final Map<String, AppLocalizations> appLanguages;
  const FunFactsApp({Key? key, required this.appLanguages}) : super(key: key);

  @override
  _FunFactsAppState createState() => _FunFactsAppState();
}

class _FunFactsAppState extends State<FunFactsApp> {
  @override
  void initState() {
    AppLocalizationsDelegate.instance.initLocales(mapOfKeys: widget.appLanguages);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FunFactBloc>(create: (_) => GetIt.I.get<FunFactBloc>()),
        BlocProvider<FunFactLoaderBloc>(
            create: (_) => GetIt.I.get<FunFactLoaderBloc>()..add(const FunFactLoaderEvent.init()))
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );
  }
}
