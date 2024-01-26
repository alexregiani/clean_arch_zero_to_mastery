import 'package:clean_arch_zero_to_mastery/presentation/core/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Advices', style: themeData.textTheme.headlineLarge),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Switch(
                value: state.isDarkMode,
                onChanged: (value) {
                  BlocProvider.of<ThemeBloc>(context).add(
                    ThemeEvent(isDarkMode: value),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
