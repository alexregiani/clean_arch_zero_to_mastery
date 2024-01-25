import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/services/theme_service.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Advices', style: themeData.textTheme.headlineLarge),
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (value) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          )
        ],
      ),
    );
  }
}
