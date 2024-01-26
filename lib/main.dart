import 'package:clean_arch_zero_to_mastery/app_theme.dart';
import 'package:clean_arch_zero_to_mastery/presentation/core/bloc/theme_bloc.dart';
import 'package:clean_arch_zero_to_mastery/presentation/pages/advice_page/advice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeChangeState>(
      builder: (context, state) {
        return MaterialApp(
          themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicePage(),
        );
      },
    );
  }
}
