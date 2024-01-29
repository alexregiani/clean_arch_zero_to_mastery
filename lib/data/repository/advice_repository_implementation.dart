import 'package:clean_arch_zero_to_mastery/data/data_sources/advice_data_source.dart';
import 'package:clean_arch_zero_to_mastery/data/models/advice_model.dart';
import 'package:clean_arch_zero_to_mastery/domain/repositories/advice_repository.dart';

class AdviceRepositoryImplementation implements AdviceRepository {
  AdviceRepositoryImplementation({required this.adviceDataSource});

  final AdviceDataSource adviceDataSource;
  @override
  Future<AdviceModel> adviceRequest() {
    final request = adviceDataSource.adviceRequest();
    return request;
  }
}
