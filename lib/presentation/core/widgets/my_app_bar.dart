import 'package:clean_arch_zero_to_mastery/presentation/core/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return AppBar(
      title: Text('Advices', style: themeData.textTheme.headlineLarge),
      actions: [
        BlocBuilder<ThemeCubit, ThemeCubitState>(
          builder: (context, state) {
            return Switch(
              value: state.isDarkTheme,
              onChanged: (value) {
                BlocProvider.of<ThemeCubit>(context)
                    .toggleTheme(switchValue: value);
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
