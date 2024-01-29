import 'package:clean_arch_zero_to_mastery/data/models/advice_model.dart';

abstract class AdviceDataSource {
  Future<AdviceModel> adviceRequest();
}
