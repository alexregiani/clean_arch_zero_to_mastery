import 'package:clean_arch_zero_to_mastery/data/data_sources/advice_data_source_implementation.dart';
import 'package:clean_arch_zero_to_mastery/data/repository/advice_repository_implementation.dart';
import 'package:clean_arch_zero_to_mastery/domain/use_cases/advice_use_cases.dart';
import 'package:clean_arch_zero_to_mastery/presentation/core/widgets/error_message.dart';
import 'package:clean_arch_zero_to_mastery/presentation/core/widgets/my_app_bar.dart';
import 'package:clean_arch_zero_to_mastery/presentation/pages/advice_page/bloc/advice_bloc.dart';
import 'package:clean_arch_zero_to_mastery/presentation/pages/advice_page/widgets/advice_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdviceBloc(
        adviceUseCases: AdviceUseCases(
          adviceRepository: AdviceRepositoryImplementation(
            adviceDataSource: AdviceDataSourceImplementation(),
          ),
        ),
      ),
      child: const AdvicePage(),
    );
  }
}

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: BlocBuilder<AdviceBloc, AdviceState>(
                  builder: (context, state) {
                    if (state is AdviceInitial) {
                      return const Text('Your advice is waiting for you');
                    } else if (state is AdviceLoadingState) {
                      return const CircularProgressIndicator(
                        color: Colors.red,
                      );
                    } else if (state is AdviceErrorState) {
                      return ErrorMessage(error: state.error);
                    } else if (state is AdviceLoadedState) {
                      return AdviceBubble(
                        advice: state.advice.toString(),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ),
            const Gap(20),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                BlocProvider.of<AdviceBloc>(context)
                    .add(AdviceRequestedEvent());
              },
              child: const Text('get advice'),
            ),
          ],
        ),
      ),
    );
  }
}
