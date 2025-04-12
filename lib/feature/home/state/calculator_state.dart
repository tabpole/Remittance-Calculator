import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'calculator_state.g.dart';

@riverpod
class CalculatorState extends _$CalculatorState {
  @override
  Map<String, double> build() => {
        'SENDING': 100.0,
        'TRANSACTION_FEE': 5.0,
        'CURRENCY_RATE': 135.5,
        'INCENTIVE_RATE': 2.5,
        'INCENTIVE': 0.0,
        'RECEIVING': 0.0,
        'RECEIVING_TOTAL': 0.0,
      };

  void updateField(String field, dynamic value) {
    state = {...state, field: value};
    calculate();
  }

  dynamic getField(String field) {
    return state[field];
  }

  void calculate() {
    final sending = state['SENDING'] ?? 0.0;
    final transactionFee = state['TRANSACTION_FEE'] ?? 0.0;
    final currencyRate = state['CURRENCY_RATE'] ?? 0.0;
    final incentiveRate = state['INCENTIVE_RATE'] ?? 0.0;

    final receiving = (sending - transactionFee) * currencyRate;
    final incentive = (receiving * incentiveRate) / 100;
    final receivingTotal = receiving;

    state = {
      ...state,
      'INCENTIVE': incentive,
      'RECEIVING': receiving,
      'RECEIVING_TOTAL': receivingTotal,
    };
  }
}
