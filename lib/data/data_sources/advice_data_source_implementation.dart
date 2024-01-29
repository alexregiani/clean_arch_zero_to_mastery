import 'package:clean_arch_zero_to_mastery/data/data_sources/advice_data_source.dart';
import 'package:clean_arch_zero_to_mastery/data/models/advice_model.dart';

class AdviceDataSourceImplementation implements AdviceDataSource {
  @override
  Future<AdviceModel> adviceRequest() async {
    await Future<void>.delayed(
      const Duration(seconds: 3),
    );
    return AdviceModel(advice: 'Money');
  }
}
