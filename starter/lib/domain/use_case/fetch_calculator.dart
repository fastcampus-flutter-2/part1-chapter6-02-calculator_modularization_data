import 'package:calculator_modularization_data_starter/domain/domain.dart';
import 'package:calculator_modularization_data_starter/util/util.dart';

class FetchCalculatorUseCase implements IUseCase<CalculatorEntity, void> {
  final ICalculatorRepository _calculatorRepository;

  FetchCalculatorUseCase(this._calculatorRepository);

  @override
  Future<CalculatorEntity> execute([void params]) async {
    final CalculatorEntity entity = await _calculatorRepository.fetch();
    return entity;
  }
}
