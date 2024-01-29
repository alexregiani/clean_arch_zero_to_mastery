import 'package:clean_arch_zero_to_mastery/domain/entities/advice_entity.dart';

abstract class AdviceRepository {
  Future<AdviceEntity> adviceRequest();
}
