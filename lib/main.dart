import 'package:clean_arch_zero_to_mastery/app_theme.dart';
import 'package:clean_arch_zero_to_mastery/presentation/core/theme_cubit/theme_cubit.dart';
import 'package:clean_arch_zero_to_mastery/presentation/pages/advice_page/advice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeCubitState>(
      builder: (context, state) {
        return MaterialApp(
          themeMode: state.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicePageWrapperProvider(),
        );
      },
    );
  }
}
