import 'package:clean_arch_zero_to_mastery/domain/entities/advice_entity.dart';
import 'package:clean_arch_zero_to_mastery/domain/repositories/advice_repository.dart';

class AdviceUseCases implements AdviceRepository {
  AdviceUseCases({required this.adviceRepository});

  final AdviceRepository adviceRepository;
  @override
  Future<AdviceEntity> adviceRequest() async {
    final call = adviceRepository.adviceRequest();
    return call;
  }
}
