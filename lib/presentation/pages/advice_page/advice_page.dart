import 'package:clean_arch_zero_to_mastery/presentation/core/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text('Your advice is waiting for you'),
                ),
              ),
              const Gap(20),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {},
                child: const Text('get advice'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
