import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:domain/model/fun_fact.dart';

import 'package:presentation/blocs/loader/loader_bloc.dart';
import 'package:presentation/blocs/fun_fact/fun_fact_bloc.dart';
import 'package:presentation/blocs/fun_fact_loader/fun_fact_loader_bloc.dart';
import 'package:presentation/l10n/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lokalise example usages:'),
            Text(context.l10n.gear),
            Text(context.l10n.start),
            BlocBuilder<FunFactBloc, FunFactState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(state.fact!.text!),
                    ),
                    TextButton(
                        onPressed: () => context.read<FunFactBloc>().add(const FunFactEvent.didTapButton()),
                        child: const Text('FunFactBloc')),
                  ],
                );
              },
            ),
            BlocBuilder<FunFactLoaderBloc, LoaderState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Container(),
                  loadInProgress: () => const Center(child: CircularProgressIndicator()),
                  loadSuccess: (result) {
                    FunFact? _fact;
                    if (result != null) {
                      _fact = result;
                    }
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(_fact!.text!),
                        ),
                        TextButton(
                            onPressed: () =>
                                context.read<FunFactLoaderBloc>()..add(const FunFactLoaderEvent.getFunFact()),
                            child: const Text('FunFactLoaderBloc'))
                      ],
                    );
                  },
                  loadFailure: (Exception error) => const Text('ERROR'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
