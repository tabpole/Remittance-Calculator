import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'calculator_state.g.dart';

@riverpod
class CalculatorState extends _$CalculatorState {
  @override
  Map<String, double> build() => {
        'fromAmount': 0.0,
        'transactionFee': 0.0,
        'currencyRate': 0.0,
        'incentiveRate': 0.0,
        'incentive': 0.0,
        'receiving': 0.0,
        'receivingTotal': 0.0,
      };

  void updateField(String field, dynamic value) {
    state = {...state, field: value};
  }

  dynamic getField(String field) {
    return state[field];
  }

  void reset() {
    state = {
      'fromAmount': 0.0,
      'transactionFee': 0.0,
      'currencyRate': 0.0,
      'incentiveRate': 0.0,
      'incentive': 0.0,
      'receiving': 0.0,
      'receivingTotal': 0.0,
    };
  }

  void calculate() {
    final fromAmount = state['fromAmount'] ?? 0.0;
    final transactionFee = state['transactionFee'] ?? 0.0;
    final currencyRate = state['currencyRate'] ?? 0.0;
    final incentiveRate = state['incentiveRate'] ?? 0.0;

    final receiving = (fromAmount - transactionFee) * currencyRate;
    final incentive = (receiving * incentiveRate) / 100;
    final receivingTotal = receiving * currencyRate;

    state = {
      ...state,
      'incentive': incentive,
      'receiving': receiving,
      'receivingTotal': receivingTotal,
    };
  }
}
