import 'package:calculator_modularization_data_starter/domain/domain.dart';
import 'package:calculator_modularization_data_starter/util/util.dart';

class SaveCalculatorUseCase implements IUseCase<void, SaveCalculatorParams> {
  final ICalculatorRepository _calculatorRepository;

  SaveCalculatorUseCase(this._calculatorRepository);

  @override
  Future<void> execute([SaveCalculatorParams? params]) async {
    if (params == null) return;
    await _calculatorRepository.save(params.entity);
  }
}

class SaveCalculatorParams {
  final CalculatorEntity entity;

  SaveCalculatorParams({
    required this.entity,
  });
}
